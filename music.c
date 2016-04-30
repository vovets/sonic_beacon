#include "music.h"
#include "pwm.h"
#include "delay.h"

void muPlay(const muCommandT* commands, uint8_t size, int8_t freqDelta) {
    for (;;) {
        for (uint8_t n = 0; n < size; ++n) {
            const muCommandT* command = commands + n;
            switch (command->id) {
            case muTone:
                pwmStart(freqDelta, 0);
                break;
            case muPause:
                pwmStop();
                break;
            case muStop:
                pwmStop();
                return;
            }
            delay(command->durationMs);
        }
    }
}
