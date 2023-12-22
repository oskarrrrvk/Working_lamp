#pragma config CPD = OFF, BOREN = OFF, IESO = OFF, DEBUG = OFF, FOSC = HS
#pragma config FCMEN = OFF, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF
#pragma config PWRTE = ON, BOR4V = BOR21V, WRT = OFF

#pragma intrinsic(_delay)
#define _XTAL_FREQ 20000000 // necessary for __delay_us

#include <xc.h>

#include "src/protocols/i2c-v2.h"
#include "src/protocols/uart.h"
#include "src/sensors/co2.h"
#include "src/timers/tmr0.h"

uint16_t co2 = 0x0000;
int cont = 0;

void main(void) {
    config_tmr0();
    i2c_config();
    config_uart();
    
    while(1);
    return;
}

void __interrupt() co2_interruption()
{
    INTCONbits.T0IF = 0;
    if(cont == 100)
    {
        co2 = read_co2_environment();
        send_uint16t_to_uart("co2",co2);
        cont = 0;
    }
    cont ++;
}
