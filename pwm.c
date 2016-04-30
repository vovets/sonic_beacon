#include "pwm.h"
#include "handlers.h"
#include "pin_defs.h"

#include <ioavr.h>
#include <stdint.h>

#define OCR0A_0 155

static void ovfHandler(void);

static PwmIdle callback;

void pwmStart(int8_t freqDelta, PwmIdle callback_) {
    // hold prescaler in reset
    GTCCR_TSM = 1;
    GTCCR_PSR0 = 1;

    // clk_io / 8
    TCCR0B_CS02 = 0;
    TCCR0B_CS01 = 1;
    TCCR0B_CS00 = 0;

    // fast PWM mode with TOP = OCR0A
    TCCR0B_WGM02 = 1;
    TCCR0A_WGM01 = 1;
    TCCR0A_WGM00 = 1;

    // toggle OC0A pin on compare match
    TCCR0A_COM0A1 = 0;
    TCCR0A_COM0A0 = 1;

    TIFR_TOV0 = 1;
    TIMSK_TOIE0 = 1;

    OCR0A = OCR0A_0 + freqDelta;

    // pin OC0A as output
    DDR_OUT = 1;
    PORT_OUT = 0;
    
    handlers.tim0OvfHandler = ovfHandler;
    callback = callback_;
    
    // start prescaler
    GTCCR_TSM = 0;
}

void pwmSet(int8_t freqDelta) {
    OCR0A = OCR0A_0 + freqDelta;
}

void pwmStop(void) {
    // hold prescaler in reset
    GTCCR_TSM = 1;
    GTCCR_PSR0 = 1;

    TCCR0B = 0;
    TCCR0A = 0;
    OCR0A = 0;

    TIMSK_TOIE0 = 0;
    TIFR_TOV0 = 1;

    PORT_OUT = 0;
    DDR_OUT = 0;
    PORT_OUT = 0; // pull-up off

    handlers.tim0OvfHandler = defaultHandler;
    
    GTCCR_TSM = 0;
}

static void ovfHandler(void) {
    if (!callback) {
        return;
    }
    if (!PIN_OUT) {
        callback();
    }
}
