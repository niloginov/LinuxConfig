#!/bin/bash
#this is my dwm script

# Settings for the trackpoint bt keyboard.
xinput --list --name-only | grep -q "TrackPoint" && key="Lenovo TrackPoint Keyboard II Mouse" &&
	xinput set-prop "$key" "Device Accel Constant Deceleration" 0.21 &&
	xinput set-prop "$key" "Device Accel Adaptive Deceleration" 12 &&
	xinput set-prop "$key" "Evdev Scrolling Distance" 0.25, 8, 15 &


# Wallpaper
~/.fehbg &

# Notifications
dunst & 

# Battery Notifications
~/.scripts/batNotification.sh &


#Print sysinfo on the top
while true;
do
	BRIGHT="$(( $(cat /sys/class/backlight/intel_backlight/brightness) / 242)) %"
	VOL=$(pamixer --get-volume-human)
	LOCALTIME=$(date +%m-%d-%Y' '%r)
	OTHERTIME=$(TZ=Europe/Moscow date +%Z\=%H:%M)
	TEMP="$(( $(cat /sys/class/thermal/thermal_zone0/temp) / 1000 )) C"
	BAT="Bat. $(acpi -b | awk '{ print $4 " " $5 }' | tr -d ',')"
	xsetroot -name " Br. $BRIGHT | $BAT rem. | $VOL vol. | $TEMP | $LOCALTIME | $OTHERTIME"
	sleep 1s
done &

#	#$(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/')
#	#Checks if there is a comand to unmute /mute the computer and does that
#	#Used this as pamixer does not work for acpid in default state
#	#[ "$(cat $vinfo)" = "1" ] && pamixer -t && echo 0 > $vinfo	
