#include "pwm.h"
#include "adc.h"
#include "eeprom.h"

#include <intrinsics.h>

#include <stdint.h>

uint8_t readAverageADC(void) {
    const uint16_t numSamples = 256;
    uint16_t result = 0;
    for (uint16_t sample = 0; sample < numSamples; ++sample) {
        result += getADC() >> 2;
    }
    return result / numSamples;
}

void tuneMode() {
    int8_t freqDelta = EEPROMload();
    startPWM(freqDelta);
    for (;;) {
        int8_t newDelta = readAverageADC() - 32;
        if (newDelta != freqDelta) {
            setPWM(newDelta);
            freqDelta = newDelta;
            EEPROMstore(freqDelta);
        }
    }
}

void normalMode() {
    uint8_t delta = EEPROMload();
    startPWM(delta);
    for (;;) {
        __no_operation();
    }
}

int main(void)
{
    initADC();
    uint8_t adcResult = readAverageADC();
    if (adcResult) {
        tuneMode();
    } else {
        normalMode();
    }
    return 0;
}
