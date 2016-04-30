#include <ioavr.h>
#include <intrinsics.h>

#include <stdint.h>

void adcInit(void) {
    // disable digital input on PB4(ADC2)
    DIDR0_ADC2D = 1;
    
    // select PB4 as ADC input
    ADMUX_MUX3 = 0;
    ADMUX_MUX2 = 0;
    ADMUX_MUX1 = 1;
    ADMUX_MUX0 = 0;

    // left adjust result
    ADMUX_ADLAR = 1;

    // enable ADC
    ADCSRA_ADEN = 1;
}

uint8_t adcGet(void) {
    // start ADC
    ADCSRA_ADSC = 1;
    while (ADCSRA_ADSC) {
        __no_operation();
    }
    return ADCH;
}

uint8_t adcGetAverage(uint8_t numSamples) {
    numSamples = numSamples == 255 ? 254 : numSamples;
    uint16_t result = 0;
    for (uint8_t sample = 0; sample < numSamples; ++sample) {
        result += adcGet();
    }
    return (result + numSamples - 1) / numSamples;
}
