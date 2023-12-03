# ElegooLightswitch

Make these changes to your Elegoo Neptune 4 Klipper install to allow to toggle the lights on the printer via a macro button in Fluidd.

Since the Elegoo implementation locks the 'value' of the respective GPIO pins, this quick-and-dirty implementation makes use of toggling the 'active_low' setting of the GPIO pin

1) Modify /etc/rc.local with the code in the rc.local file.
2) Install the scripts in the script directory in the home directory of the mks user. Make sure to make these executable.
3) Add the statements in the config.cfg file to your klipper config.

Do this at your own risk. It is always possible that the printer implodes into a black hole.  
