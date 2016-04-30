#include <stdint.h>

static __eeprom uint8_t value = 0;

void eepStore(uint8_t value_) {
    value = value_;
}

uint8_t eepLoad() {
    return value;
}
