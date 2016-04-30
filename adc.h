#pragma once

#include <stdint.h>

void adcInit(void);
uint8_t adcGet(void);
uint8_t adcGetAverage(uint8_t numSamples);
