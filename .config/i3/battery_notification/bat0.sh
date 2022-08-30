#!/bin/sh

CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)

STATUS=$(cat /sys/class/power_supply/BAT0/status)

[ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -lt 50 ] && \

/usr/bin/notify-send -u critical -a power_supply_low "Low Battery" "You are running low on battery ($CAPACITY%).\nPlease plug in the charger."  && \

echo "Low Battery notification sent" || \
#echo "Low Battery notification sent" && $(sudo -u outrovasco aplay /home/outrovasco/.config/i3/battery_notification/clearly.ogg) || \

echo "Low Battery notification not sent"

