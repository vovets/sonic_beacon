#include "delay.h"

#include <intrinsics.h>

static void delay1ms(void) {
    for (uint16_t n = 1600; n; --n) {
        __no_operation();
    }
}

void delay(uint16_t ms) {
    for (uint16_t n = 0; n < ms; ++n) {
        delay1ms();
    }
}
