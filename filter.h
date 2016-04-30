#pragma once

#include <stdint.h>

enum {
    fiSIZE = 10
};

struct fiFilter {
    uint8_t values[fiSIZE];
    uint8_t idx;
    uint8_t size;
};

typedef struct fiFilter fiFilterT;

void fiInit(fiFilterT* filter);
uint8_t fiValue(fiFilterT* filter, uint8_t nextPoint);
