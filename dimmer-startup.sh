#!/bin/bash
# Bash script to control the monitor brightness
brightness_level=$(cat ~/scripts/brightness)
echo "$brightness_level"
screenname=$(xrandr | grep " connected" | cut -f1 -d" ")
xrandr --output $screenname --brightness $brightness_level;
