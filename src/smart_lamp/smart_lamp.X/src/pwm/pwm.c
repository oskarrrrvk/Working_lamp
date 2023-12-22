#include "pwm.h"

void config_CCP1()
{
    CCP1CONbits.P1M   = 0b00; //single output
    CCP1CONbits.DC1B  = 0b1; //PWM MODE
    CCP1CONbits.CCP1M = 0b1100; // activo todo a nivel alto
    CCPR1L = N;
}

void config_pwm()
{
    TRISC = 0;
    config_tmr2();
    config_CCP1();
}

void send_PWM_sign(float percent)
{
    CCPR1L = (uint8_t)(percent * N);
}