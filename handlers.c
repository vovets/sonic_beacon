#include "handlers.h"

#include <ioavr.h>

void defaultHandler() {
}

extern Handlers handlers = {
    defaultHandler,
    defaultHandler,
    defaultHandler,
    defaultHandler
};

#pragma vector=INT0_vect
__interrupt static void intHandler(void) {
    handlers.intHandler();
}

#pragma vector=TIM1_OVF_vect
__interrupt static void tim1OvfHandler(void) {
    handlers.tim1OvfHandler();
}

#pragma vector=TIM0_OVF_vect
__interrupt static void tim0OvfHandler(void) {
    handlers.tim0OvfHandler();
}

#pragma vector=TIM0_COMPA_vect
__interrupt static void tim0CompAHandler(void) {
    handlers.tim0CompAHandler();
}
