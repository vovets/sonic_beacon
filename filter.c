#include "filter.h"

#include <string.h>
#include <stdlib.h>

void fiInit(fiFilterT* filter) {
    filter->idx = 0;
    filter->size = 0;
}

static int cmp(const void* l_, const void* r_) {
    const uint8_t* l = (const uint8_t*)l_;
    const uint8_t* r = (const uint8_t*)r_;
    return (*l > *r) - (*l < *r);
}

uint8_t fiValue(fiFilterT* f, uint8_t nextPoint) {
    uint8_t nextIdx = 0;
    if (f->size < fiSIZE) {
        nextIdx = f->size;
        ++f->size;
    } else {
        nextIdx = (f->idx + 1) % fiSIZE;
    }
    f->values[nextIdx] = nextPoint;
    uint8_t buf[fiSIZE];
    memcpy(buf, f->values, f->size);
    qsort(buf, f->size, 1, cmp);
    return buf[(f->size - 1U) / 2U];
}
