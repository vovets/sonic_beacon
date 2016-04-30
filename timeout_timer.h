#pragma once

#include <stdint.h>

#define TT_1_PERIOD_US 32768

typedef void (*TtHasExpired)();

void ttStart(uint16_t periods, TtHasExpired callback);
void ttStop(void);
