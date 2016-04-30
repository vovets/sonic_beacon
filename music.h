#pragma once

#include <stdint.h>

typedef enum muCommandId {
    muTone,
    muPause,
    muStop
} muCommandIdT;

typedef struct muCommand {
    muCommandIdT id;
    uint16_t durationMs;
} muCommandT;

void muPlay(const muCommandT* commands, uint8_t size, int8_t freqDelta);
