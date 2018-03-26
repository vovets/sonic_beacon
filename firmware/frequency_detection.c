#include "input.h"
#include "handlers.h"
#include "hal.h"

#include <stdint.h>
#include <ioavr.h>
#include <intrinsics.h>
#include <stdlib.h>

#define Cd 3
#define Et 1
#define Pmin 4 // t1=1uS OVR=256uS
/* #define Pmin 6 // t1=4uS OVR=1,024ms */
#define Pmax 11 // t1=128uS OVR=32,768ms 

static volatile uint8_t completed;
static uint8_t C;
static uint8_t P;
static int16_t T;

static void intHandlerS1(void);
static void ovfHandlerS1(void) {
    __no_operation();
}

static void intHandlerS2(void);
static void ovfHandlerS2(void);

static void done();
static void start();

#define DEF_SET_STATE(S, I, O)                  \
    static inline void setState##S(void) {      \
        handlers.intHandler = I;                \
        handlers.tim1OvfHandler = O;            \
    }

DEF_SET_STATE(S1, intHandlerS1, ovfHandlerS1)
DEF_SET_STATE(S2, intHandlerS2, ovfHandlerS2)

static inline void stopTimer(void) {
    setPrescaler(0);
    TIMSK_TOIE1 = 0;
    TIFR_TOV1 = 1;
}

static inline void startTimer(void) {
    TCNT1 = 0;
    TIMSK_TOIE1 = 1;
    setPrescaler(P);
    GTCCR_PSR1 = 1;
}    

static void intHandlerS1(void) {
    startTimer();
    T = 0;
    C = Cd;
    setStateS2();
}

static void intHandlerS2(void) {
    int16_t t = TCNT1;
    TCNT1 = 0;
    if (T == 0) {
        T = t;
        --C;
        if (!C) {
            done();
            return;
        }
    } else {
        uint8_t Td = abs(t - T);
        if (Td > Et) {
            intHandlerS1();
            return;
        } else {
            --C;
            if (!C) {
                done();
                return;
            }
        }
    }
}

static void ovfHandlerS2(void) {
    stopTimer();
    ++P;
    if (P > Pmax) {
        P = Pmin;
    }
    setStateS1();
}

static inline void start(void) {
    __disable_interrupt();
    setStateS1();
    P = Pmin;
    setRisingEdgeInt();
    resetPendingInt();
    enableInt();
    __enable_interrupt();
}

static inline void done(void) {
    stopTimer();
    disableInt();
    completed = 1;
}

void fdDetectFrq(InParams* result) {
    completed = 0;
    start();
    while (!completed) {
        __no_operation();
    }
    result->prescaler = P;
    result->counter = T;
}
