#pragma once

#include "input.h"

#include <stdint.h>

typedef enum SdSignalStateT {
    sdOn,
    sdOff
} SdSignalState;

typedef struct SdParamsT {
    uint8_t prescaler;
    uint8_t T0;
    uint8_t Tovf;
} SdParams;

typedef void (*SdStateChanged)(SdSignalState);

void sdStartSignalDetector(SdParams* sdParams, SdStateChanged callback);

void sdStartSignalDetectorServo(SdStateChanged callback);
