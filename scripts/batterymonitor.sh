#!/bin/bash
# add this in crontab
#*/3 * * * * DISPLAY=:0 batterymonitor.sh

batterypercentage=$(/usr/bin/upower -i /org/freedesktop/UPower/devices/battery_BAT0 | /usr/bin/grep 'percentage' |
/usr/bin/awk '{print $2}')

#batterynumber=1
batterynumber=${batterypercentage%\%}

if [ $batterynumber -lt 10 ]; then
	if [ $(cat /sys/class/power_supply/AC0/online) == 0 ]; then
	/usr/bin/notify-send -a "Battery is $batterynumber%." "Charge soon." -u critical
	fi
fi
