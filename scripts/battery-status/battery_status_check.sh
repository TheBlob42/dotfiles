#!/bin/bash

# get notified about your laptop's battery status (in order to spare it)
# - laptop is currently charging and the battery status rises above UPPER_TRESHOLD (%)
# - laptop is currently not charging and the battery status drops below LOWER_TRESHOLD (%)
#
# run this script as a cronjob every 5 minutes or so:
# */5 * * * * /path/to/battery_status_check.sh
#
# edit crontab with:   crontab -e
# reload all crontabs: sudo service cron restart

UPPER_THRESHOLD="80"
LOWER_THRESHOLD="30"

BATTERY_LEVEL=`acpi -b | grep -P -o '[0-9]+(?=%)'`
IS_CHARGING=`acpi -b | grep -P -o 'Charging'`

if [ -n "$IS_CHARGING" ]
then

    if [ "$BATTERY_LEVEL" -gt "$UPPER_TRESHOLD" ]
    then
	XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send "Battery Management" "Battery level is at ${BATTERY_LEVEL}%\nStop charging to spare the battery" -i battery
    fi

else

    if [ "$BATTERY_LEVEL" -lt "$LOWER_THRESHOLD" ]
    then
	XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send "Battery Management" "Battery level is at ${BATTERY_LEVEL}%\nYou should start charging now" -i battery-low
    fi

fi
