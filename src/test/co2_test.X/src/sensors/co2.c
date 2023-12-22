#include "co2.h"

uint16_t read_co2_environment(void)
{
    uint16_t co2_value;
    char ack = 0x01;
    
    i2c_start();
    i2c_write(CO2_ADDRESS);
    i2c_stop();
    
    i2c_start();
    co2_value = i2c_read(ack);    
    co2_value = (co2_value << 8)| i2c_read(ack);

    i2c_stop();
    return co2_value;
}