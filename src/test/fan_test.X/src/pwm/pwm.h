#ifndef PWM_H
#define PWM_H

#include "../timers/tmr2.h"

void config_CCP1(void);
void config_pwm(void);
void send_PWM_sign(float);

#endif