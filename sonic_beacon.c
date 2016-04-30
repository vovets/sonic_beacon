#include "frequency_detection.h"
#include "signal_detection.h"
#include "timeout_timer.h"
#include "music.h"
#include "pin_defs.h"
#include "delay.h"
#include "pwm.h"
#include "eeprom.h"

#include <intrinsics.h>
#include <ioavr.h>

#define TIMEOUT_PERIODS(MS) (((MS) * 1000L) / TT_1_PERIOD_US);

static const uint16_t armTimeout = TIMEOUT_PERIODS(3000);
static const uint16_t alarmTimeout = TIMEOUT_PERIODS(30000);

static int8_t freqDelta = 0;

static const muCommandT alarm[] = {
    { muTone, 100 },
    { muPause, 50 },
    { muTone, 100 },
    { muPause, 50 },
    { muTone, 100 },
    { muPause, 50 },
    { muTone, 100 },
    { muPause, 1000 }};

static const muCommandT armed[] = {
    { muTone, 100 },
    { muPause, 50 },
    { muTone, 100 },
    { muStop, 0 }
};


typedef enum EventT {
    eventOn,
    eventOff,
    eventTimeout
} Event;

static Event event;
static uint8_t eventReady = 0;

static void signalCallback(SdSignalState state) {
    switch (state) {
    case sdOn:
        event = eventOn;
        break;
    case sdOff:
        event = eventOff;
        break;
    default:
        ;
    }
    eventReady = 1;
}

static void timeoutCallback(void) {
    event = eventTimeout;
    eventReady = 1;
}

static Event waitForEvent(void) {
    while (!eventReady) {
        __no_operation();
    }
    Event e = event;
    eventReady = 0;
    return e;
}

int normal(void) {
    __enable_interrupt();
    InParams result;
    fdDetectFrq(&result);
    uint16_t period_uS = (1 << (result.prescaler - 4)) * result.counter;
    if (period_uS < 2000) {
        if (result.counter > 253) {
            result.counter /= 2;
            ++result.prescaler;
        }
        SdParams sdParams;
        sdParams.prescaler = result.prescaler;
        sdParams.T0 = result.counter / 8;
        sdParams.Tovf = result.counter + 2;
        sdStartSignalDetector(&sdParams, signalCallback);
    } else {
        sdStartSignalDetectorServo(signalCallback);
    }
    for (uint8_t stop = 0; !stop;) {
        switch (waitForEvent()) {
        case eventOn:
            ttStart(armTimeout, timeoutCallback);
            break;
        case eventOff:
            ttStop();
            break;
        case eventTimeout:
            ttStop();
            stop = 1;
            break;
        default:
            ;
        }
    }
    __disable_interrupt();
    muPlay(armed, sizeof(armed) / sizeof(armed[0]), freqDelta);
    __enable_interrupt();
    for (uint8_t stop = 0; !stop;) {
        switch (waitForEvent()) {
        case eventOn:
            ttStop();
            break;
        case eventOff:
            ttStart(alarmTimeout, timeoutCallback);
            break;
        case eventTimeout:
            ttStop();
            stop = 1;
            break;
        default:
            ;
        }
    }
    muPlay(alarm, sizeof(alarm) / sizeof(alarm[0]), freqDelta);
    return 0;
}

static inline int8_t max(int8_t a, int8_t b) {
    return a > b ? a : b;
}

static inline int8_t min(int8_t a, int8_t b) {
    return a < b ? a : b;
}

int calibration(void) {
    pwmStart(freqDelta, 0);
    for (uint8_t n = 5; n; n -= PIN_BUTTON_DEC) {
        delay(10);
    }
    for (;;) {
        uint8_t buttonPressed = 0;
        if (!PIN_BUTTON_DEC) {
            freqDelta = max(freqDelta - 1, -32);
            buttonPressed = 1;
        }
        if (!buttonPressed && !PIN_BUTTON_INC) {
            freqDelta = min(freqDelta + 1, 31);
            buttonPressed = 1;
        }
        if (buttonPressed) {
            pwmSet(freqDelta);
            eepStore((uint8_t)freqDelta);
            delay(150);
        }
    }
}

int main(void) {
    DDR_OUT = 1;
    PORT_OUT = 0;
    PORT_BUTTON_DEC = 1;
    PORT_BUTTON_INC = 1;
    freqDelta = (int8_t)eepLoad();
    uint8_t cal = 0;
    cal += PIN_BUTTON_DEC;
    delay(10);
    cal += PIN_BUTTON_DEC;
    delay(10);
    cal += PIN_BUTTON_DEC;
    if (!cal) {
        return calibration();
    } else {
        return normal();
    }
}
