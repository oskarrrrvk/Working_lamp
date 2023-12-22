#pragma config CPD = OFF, BOREN = OFF, IESO = OFF, DEBUG = OFF, FOSC = HS
#pragma config FCMEN = OFF, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF
#pragma config PWRTE = ON, BOR4V = BOR21V, WRT = OFF

#pragma intrinsic(_delay)
#define _XTAL_FREQ 20000000 // necessary for __delay_us

#include <xc.h>
#include <stdio.h>
#include <string.h>


//utils
#include "src/timers/tmr0.h"
#include "src/adc/adc.h"
#include "src/pwm/pwm.h"

#include "src/protocols/UART/uart.h"
#include "src/protocols/I2C/i2c-v2.h"
#include "src/protocols/SPI/spi-master-v1.h"

//sensors_actuators
#include "src/sensors/co2.h"
#include "src/sensors/humidity.h"
#include "src/sensors/luminosity.h"
#include "src/sensors/noise.h"
#include "src/sensors/temperature.h"

#include "src/actuators/leds.h"

float humidity = 0.0,brightness = 0.0, temperature = 0.0;

uint16_t co2 = 0x0000, noise = 0x0000;

int timer_counter = 0,i,j;

uint8_t serial;
uint8_t lamp[4];

void config_sma(void);

void main(void) {
    config_sma();
    while(1);
    
    return;
}

void config_sma()
{
    i2c_config();
    config_adc_channel();
    config_pwm();
    config_tmr0();
    config_uart();
    config_luminosity(); 
}


void __interrupt() interrupt_rutine(void)
{
    if(PIR1bits.RCIF)
    {
        serial = receive_uart();
        if(serial == 'S')
            send_PWM_sign((float)receive_uart()/100);
        else
        {
            for(i = 1; i < 8; i++)
                for(j = 0; j < 2; j++)
                    lamp[i] = receive_uart();
            change_color_lamp (lamp[0],lamp[1],lamp[2]);
            change_brightness_lamp(lamp[3]);
        }
        PIR1bits.RCIF = 0;
    }
    if(INTCONbits.T0IF)
    {
        co2 = read_co2_environment();
        humidity = read_humidity_channel();
        brightness = read_luminosity();
        temperature = read_temperature();
        
        if(timer_counter % 2 == 1) // time = 10ms
        {
            noise = read_noise_channel();
            take_best_noise(noise);
        }
        if(timer_counter % 200 == 0) // 5ms * 200 = 1s
        {
            send_uint16t_to_uart ("noise",best_noise);            
            reset_best_noise();
        }
        if(timer_counter == 1000)//5ms *1000 = 5s
        {
            send_uint16t_to_uart ("co2",co2);            
            send_uint16t_to_uart ("noise",noise);
            send_float_to_uart ("humidity",humidity);
            send_float_to_uart ("luminosity",brightness);
            send_float_to_uart ("temperature",temperature);
            
            timer_counter = -1;
        }
        timer_counter ++;
        INTCONbits.T0IF = 0;

    }
}

