#include "signal_detection.h"
#include "hal.h"
#include "handlers.h"

#include <intrinsics.h>

#define nOVFl 5 // 20.48mS

static SdParams* sdParams;
static SdSignalState signalState = sdOff;
static SdStateChanged callback;

static uint8_t n;

static inline void setupTimer(uint8_t pwmMode) {
    if (pwmMode) {
        TCCR1_PWM1A = 1;
    } else {
        TCCR1_PWM1A = 0;
    }
    OCR1C = sdParams->Tovf;
}

static inline void restartTimer() {
    TCNT1 = 0;
    setPrescaler(sdParams->prescaler);
    
    GTCCR_PSR1 = 1;
    TIFR_TOV1 = 1;
    TIMSK_TOIE1 = 1;
}

static inline uint8_t isHigh() {
    return PINB_PINB2;
}

static inline void setRising() {
    setRisingEdgeInt();
    resetPendingInt();
}

static inline void setFalling() {
    setFallingEdgeInt();
    resetPendingInt();
}

static inline void isOff() {
    if (signalState == sdOn) {
        signalState = sdOff;
        callback(sdOff);
    }
}

static inline void isOn() {
    if (signalState == sdOff) {
        signalState = sdOn;
        callback(sdOn);
    }
}

static void intHandlerS1(void);
static void ovfHanlderS1(void);

static void intHandlerS2(void);
static void ovfHanlderS2(void);

static void intHandlerServoS1(void);
static void ovfHanlderServoS1(void);

static void intHandlerServoS2(void);
static void ovfHanlderServoS2(void);

static void intHandlerServoS3(void);
static void ovfHanlderServoS3(void);

#define DEF_SET_STATE(S, I, O)                  \
    static inline void setState##S(void) {      \
        handlers.intHandler = I;                \
        handlers.tim1OvfHandler = O;            \
    }

DEF_SET_STATE(S1, intHandlerS1, ovfHanlderS1)
DEF_SET_STATE(S2, intHandlerS2, ovfHanlderS2)

DEF_SET_STATE(ServoS1, intHandlerServoS1, ovfHanlderServoS1)
DEF_SET_STATE(ServoS2, intHandlerServoS2, ovfHanlderServoS2)
DEF_SET_STATE(ServoS3, intHandlerServoS3, ovfHanlderServoS3)

static void intHandlerS1(void) {
    restartTimer();
    setFalling();
    if (isHigh()) {
        setStateS2();
    } else {
        isOff();
        setRising();
    }        
}

static void ovfHanlderS1(void) {
    if (isHigh()) {
        isOn();
    } else {
        isOff();
    }
}

static void intHandlerS2(void) {
    uint8_t t = TCNT1;
    restartTimer();
    setRising();
    setStateS1();
    if (t < sdParams->T0) {
        isOff();
    } else if (t > sdParams->T0 + 1) {
        isOn();
    }
}

static void ovfHanlderS2(void) {
    setRising();
    setStateS1();
    isOn();
}

static void servoBegin() {
    setStateServoS1();
    setupTimer(0);
    n = nOVFl;
    setRising();
    restartTimer();
}

static void intHandlerServoS1(void) {
    setFalling();
    setupTimer(1);
    restartTimer();
    if (!isHigh()) {
        isOff();
        servoBegin();
    } else {
        setStateServoS2();
    }
}

static void ovfHanlderServoS1(void) {
    --n;
    if (!n) {
        n = nOVFl;
        isOff();
    }
}

static void intHandlerServoS2(void) {
    uint8_t t = TCNT1;
    if (t > (sdParams->T0 + 1)) {
        isOn();
    } else if (t < (sdParams->T0 - 1)) {
        isOff();
    }
    servoBegin();
}

static void ovfHanlderServoS2(void) {
    isOff();
    setStateServoS3();
}

static void intHandlerServoS3(void) {
    servoBegin();
}

static void ovfHanlderServoS3(void) {
    isOff();
}

void sdStartSignalDetector(SdParams* sdParams_, SdStateChanged callback_) {
    sdParams = sdParams_;
    callback = callback_;
    setStateS1();
    setupTimer(1);
    __disable_interrupt();
    setRising();
    enableInt();
    restartTimer();
    __enable_interrupt();
}

void sdStartSignalDetectorServo(SdStateChanged callback_) {
    static SdParams sdParams_;
    sdParams_.prescaler = 8; // t1=16uS
    sdParams_.T0 = 78; // 1248uS
    sdParams_.Tovf = 156; // = OVFh = 2496uS
    sdParams = &sdParams_;
    callback = callback_;
    __disable_interrupt();
    servoBegin();
    enableInt();
    __enable_interrupt();
}    

