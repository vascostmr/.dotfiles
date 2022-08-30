#!/usr/bin/env sh

PRIMARY="DP-2"
SECONDARY="HDMI-0"
xrandr --output $PRIMARY --primary --mode 1920x1080 --pos 0x0 --rotate normal
xrandr --output $SECONDARY --pos 1920x0 --rotate left --right-of "$PRIMARY"
