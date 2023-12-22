#pragma config CPD = OFF, BOREN = OFF, IESO = OFF, DEBUG = OFF, FOSC = HS
#pragma config FCMEN = OFF, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF
#pragma config PWRTE = ON, BOR4V = BOR21V, WRT = OFF

#pragma intrinsic(_delay)
#define _XTAL_FREQ 20000000 // necessary for __delay_us

#include <xc.h>

#include "src/pwm/pwm.h"
#include "src/protocols/UART/uart.h"

void main(void) {
    config_uart();
    config_pwm();
    while(1);
    return;
}

void __interrupt() fan_interruption()
{
    PIR1bits.RCIF = 0;
    serial = receive_uart();
    if(serial == 'S')
        send_PWM_sign((float)receive_uart()/100);
}