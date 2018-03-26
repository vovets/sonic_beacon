# Sonic Beacon

## Overview
This little device is supposed to provide an aid in finding small RC models in the grass or other obstcles. It does so by emitting series of loud beeps. It was originally designed to be used with Blade series of micro helicopters but can be used with any model that has throttle signal.

## Modes of operation
Device has two modes of operation: auxilary "calibration" which will be discussed later and main "normal".

## Theory of operation ("normal" mode)
1. Device gets powered on and automatically detects control signal type be it standard servo signal or PWM.
1. Device waits for the control signal to be higher than threshold value for more than 3 seconds then device becomes "armed".
1. Device waits for the control signal to be lower than threshold value for more than 30 seconds then device starts emitting series of tones and does so indefinitely.

## Practice of operation ("normal" mode)
1. Operator powers up model.
1. Operator starts flying model. To do so he pushes the throttle up, so throttle gets higher than the threshold. In 3 seconds beacon arms.
1. In the unfortunate event that the model can not be sighted after landing because of grass or other obstacles operator zeroes the throttle (or failsafe does so). After 30 seconds beacon starts emitting beeps and that aids operator in locating model ~~crash~~landing site.

## Throttle threshold
* For PWM control signal it is 1/8 (12.5%) of throttle.
* For Servo control signal it is 1248 microseconds or 25% of throttle.

## Tone frequency calibration
The frequency of the tone emitted by the device can be adjusted by user to accomodate for differences in hearing or variations in device base frequency. Adjusted frequency is stored in device's eeprom so it is not lost after power off.

Device pcb has two special pads for this purpose designated as **DEC** and **INC** in schematics and silk layer.
To adjust frequency it is needed to solder buttons from these pad to **GND** pad or use piece of wire or metallic tweezers or something similar. In the following we will refer to them as buttons for brevity.

To enter calibration mode **DEC** button must be pressed upon powering device on. Device starts emitting continous tone. Frequency of the tone can be adjusted by pressing **INC** or **DEC** buttons. Adjusted frequency gets immediately stored in the eeprom. To exit this mode device needs to be powered off.

## Implementation details

### Fuses

```
SELFPRGEN = [ ]
RSTDISBL = [ ]
DWEN = [ ]
SPIEN = [X]
WDTON = [ ]
EESAVE = [X]
BODLEVEL = 1V8
CKDIV8 = [ ]
CKOUT = [ ]
SUT_CKSEL = INTRCOSC_8MHZ_6CK_14CK_64MS

EXTENDED = 0xFF (valid)
HIGH = 0xD6 (valid)
LOW = 0xE2 (valid)
```
