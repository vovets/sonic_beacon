#pragma once

#include <ioavr.h>

static inline void setPrescaler(uint8_t p) {
    TCCR1 = (TCCR1 & 0xf0) | (p & 0x0f);
}

static inline void setRisingEdgeInt(void) {
    MCUCR_ISC00 = 1;
    MCUCR_ISC01 = 1;
}

static inline void setFallingEdgeInt(void) {
    MCUCR_ISC00 = 0;
    MCUCR_ISC01 = 1;
}

static inline void enableInt(void) {
    GIMSK_INT0 = 1;
}

static inline void disableInt(void) {
    GIMSK_INT0 = 0;
}

static inline void resetPendingInt(void) {
    GIFR_INTF0 = 1;
}
