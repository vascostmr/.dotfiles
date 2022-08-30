#!/usr/bin/env sh

PRIMARY="DP-2"
SECONDARY="eDP-1"
xrandr --output $PRIMARY --primary --mode 1920x1080 --pos 0x0 --rotate normal
xrandr --output $SECONDARY --mode 1366x768 --pos 1920x200 --right-of "$PRIMARY"
