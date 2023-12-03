#!/bin/bash
# Set the GPIO pin number
GPIO_PIN=79
# Read the current value of the GPIO pin
CURRENT_VALUE=$(cat /sys/class/gpio/gpio$GPIO_PIN/active_low)
# Flip the GPIO pin
if [ $CURRENT_VALUE -eq 1 ]
then
    echo 0 | tee /sys/class/gpio/gpio$GPIO_PIN/active_low > /dev/null
else
    echo 1 | tee /sys/class/gpio/gpio$GPIO_PIN/active_low > /dev/null
fi
