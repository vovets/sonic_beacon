#pragma once

#include <stdint.h>

typedef void (*PwmIdle)(void);

void pwmStart(int8_t freqDelta, PwmIdle callback);
void pwmSet(int8_t freqDelta);
void pwmStop(void);
