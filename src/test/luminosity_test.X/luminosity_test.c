#pragma config CPD = OFF, BOREN = OFF, IESO = OFF, DEBUG = OFF, FOSC = HS
#pragma config FCMEN = OFF, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF
#pragma config PWRTE = ON, BOR4V = BOR21V, WRT = OFF

#pragma intrinsic(_delay)
#define _XTAL_FREQ 20000000 // necessary for __delay_us

#include <xc.h>

#include "src/protocols/i2c-v2.h"
#include "src/protocols/uart.h"
#include "src/sensors/luminosity.h"
#include "src/timers/tmr0.h"

float brightness = 0.0;
int counter = 0;

void main(void) {
    config_tmr0();
    i2c_config();
    config_uart();
    
    while(1);
    return;
}

void __interrupt() luminosity_test()
{
    INTCONbits.T0IF = 0;
    if(counter == 100)
    {
        brightness = read_luminosity();
        send_float_to_uart(brightness);
        counter = 0;
    }
    counter ++;
}