#include "timeout_timer.h"
#include "handlers.h"

#include <ioavr.h>

static TtHasExpired callback;
static uint16_t periodsLeft;

static void ovfHandler(void);

void ttStart(uint16_t periods, TtHasExpired callback_) {
    GTCCR_TSM = 1;
    GTCCR_PSR0 = 1;
    TCCR0A = 0;
    TCCR0B = 0;
    TCCR0B_CS00 = 1;
    TCCR0B_CS02 = 1;
    TIMSK_OCIE0A = 0;
    TIFR_OCF0A = 1;
    TIMSK_OCIE0B = 0;
    TIFR_OCF0B = 1;
    TIFR_TOV0 = 1;
    TIMSK_TOIE0 = 1;
    TCNT0 = 0;

    handlers.tim0OvfHandler = ovfHandler;
    callback = callback_;
    periodsLeft = periods;
    GTCCR_TSM = 0;
}

void ttStop(void) {
    GTCCR_TSM = 1;
    GTCCR_PSR0 = 1;
    TCCR0A = 0;
    TCCR0B = 0;
    TIMSK_OCIE0A = 0;
    TIFR_OCF0A = 1;
    TIMSK_OCIE0B = 0;
    TIFR_OCF0B = 1;
    TIMSK_TOIE0 = 0;
    TIFR_TOV0 = 1;
    TCNT0 = 0;
    GTCCR_TSM = 0;
}

void ovfHandler(void) {
    --periodsLeft;
    if (!periodsLeft) {
        ttStop();
        callback();
    }
}
