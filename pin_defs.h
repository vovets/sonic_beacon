#pragma once

#include <ioavr.h>

#define DDR_BUTTON_INC DDRB_DDB3
#define PORT_BUTTON_INC PORTB_PORTB3
#define PIN_BUTTON_INC PINB_PINB3

#define DDR_BUTTON_DEC DDRB_DDB4
#define PORT_BUTTON_DEC PORTB_PORTB4
#define PIN_BUTTON_DEC PINB_PINB4

#define DDR_IN DDRB_DDB2
#define PORT_IN PORTB_PORTB2
#define PIN_IN PINB_PINB2

// OC0A
#define DDR_OUT DDRB_DDB0
#define PORT_OUT PORTB_PORTB0
#define PIN_OUT PINB_PINB0
