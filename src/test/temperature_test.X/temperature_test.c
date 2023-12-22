#pragma config CPD = OFF, BOREN = OFF, IESO = OFF, DEBUG = OFF, FOSC = HS
#pragma config FCMEN = OFF, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF
#pragma config PWRTE = ON, BOR4V = BOR21V, WRT = OFF

#pragma intrinsic(_delay)
#define _XTAL_FREQ 20000000 // necessary for __delay_us

#include <xc.h>

#include "src/timers/tmr0.h"
#include "src/adc/adc.h"
#include "src/sensors/temperature.h"
#include "src/protocols/uart.h"

int counter = 0;
float temperature = 0.0;

void main(void) {
    config_adc_channel();
    config_tmr0 ();
    config_uart ();
    
    while(1);
    return;
}

void __interrupt() temperature_interruption()
{
    INTCONbits.T0IF = 0;
    if(counter == 100)
    {
        temperature = read_temperature();
        send_float_to_uart("temperature",temperature);
        counter = 0;
    }
    counter ++;
}