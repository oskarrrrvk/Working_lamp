#include "luminosity.h"

void  config_luminosity()
{
    i2c_start();
    i2c_write(LUM_ADDRESS);
    i2c_write(0x00); //command 00
    i2c_write(0x00);
    i2c_write(0x03); 
    i2c_stop();
    
    i2c_start();
    i2c_write(0x01); //command 01
    i2c_write(0xFF); 
    i2c_write(0xFF);
    i2c_stop();
    
    i2c_start();
    i2c_write(0x02); //command 02
    i2c_write(0x00); 
    i2c_write(0x00);
    i2c_stop();
    
    i2c_start();
    i2c_write(0x04);
    i2c_stop();
}

float read_luminosity()
{
    uint16_t lum;
    char ack = 0x01;
    
    i2c_start();
    lum = i2c_read(ack);
    lum = (lum << 8) | i2c_read(ack);
    i2c_stop();
    
    return (float)((int)lum * 0.4); // lum * (10 / 25)
}