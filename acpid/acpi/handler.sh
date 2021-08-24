#!/bin/bash
# Default acpi script that takes an entry for all actions

case "$1" in
    button/power)
        case "$2" in
            PBTN|PWRF)
                logger 'PowerButton pressed'
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
    button/sleep)
        case "$2" in
            SLPB|SBTN)
                logger 'SleepButton pressed'
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
    ac_adapter)
        case "$2" in
            AC|ACAD|ADP0)
                case "$4" in
                    00000000)
                        logger 'AC unpluged'
                        ;;
                    00000001)
                        logger 'AC pluged'
                        ;;
                esac
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
    battery)
        case "$2" in
            BAT0)
                case "$4" in
                    00000000)
                        logger 'Battery online'
                        ;;
                    00000001)
                        logger 'Battery offline'
                        ;;
                esac
                ;;
            CPU0)
                ;;
            *)  logger "ACPI action undefined: $2" ;;
        esac
        ;;
    button/lid)
        case "$3" in
            close)
                logger 'LID closed'
                ;;
            open)
                logger 'LID opened'
                ;;
            *)
                logger "ACPI action undefined: $3"
                ;;
    	esac
    	;;

    video/brightnessup)
        logger 'Brightness up pressed'
        /etc/acpi/handlers/screenBacklight +
        ;;
    video/brightnessdown)
        logger 'Brightness down pressed'
        /etc/acpi/handlers/screenBacklight -
        ;;
    video/switchmode)
	logger 'Video Switchmode pressed (disable backlight)'
        /etc/acpi/handlers/screenOnOff
	;;
    button/volumedown)
	logger 'Volume down pressed'
	#amixer set Master 5-
	sudo -u kiryuin XDG_RUNTIME_DIR=/run/user/1000 pamixer -d 5
	;;
    button/mute)
    	logger 'Mute pressed'
	#this signal is read by the top right toolbar script
	#location: ~/.xinitrc
	sudo -u kiryuin XDG_RUNTIME_DIR=/run/user/1000 pamixer -t
#	echo 1 > /home/kiryuin/.scripts/volinfo
#	amixer set Master toggle
	;;
    button/volumeup)
	logger 'Volume up pressed'
	sudo -u kiryuin XDG_RUNTIME_DIR=/run/user/1000 pamixer -i 5
	#amixer set Master 5+
	;;

    *)
        logger "ACPI group/action undefined: $1 / $2"
        ;;
esac

# vim:set ts=4 sw=4 ft=sh et:
