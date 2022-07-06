#!/bin/bash

# Script to use acpi event (projection mode button)
# in order to turn on or turn of the screen.
# by Nikita Loginov

#bright=/sys/class/backlight/intel_backlight/brightness
bright=/home/kiryuin/.scripts/currentScreen
last_state=/home/kiryuin/.scripts/lastState
log=/home/kiryuin/.scripts/log


#if [ "$(cat $bright)" != "0" ]; then
#	echo "$(cat $bright)" > $last_state && echo "0" > $bright && echo "The screen is off now"
#
#else
#	echo "$(cat $last_state)" > $bright && echo "The screen is set to $(cat $last_state) now"
#fi

#[ "$(cat $bright)" = "0" ] && echo "$(cat $last_state)" > $bright && echo "The screen is set to $(cat $last_state) now"


[ "$(cat $bright)" != "0" ] && ( echo "$(cat $bright)" > $last_state && echo "0" > $bright && echo "The screen is off now" ) || ( echo "$(cat $last_state)" > $bright && echo "The screen is set to $(cat $last_state) now" )

