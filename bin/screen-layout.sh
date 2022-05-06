#!/bin/bash

if [ "$1" == "1" ]; then
    xrandr --output eDP-1 --auto --output HDMI-1 --off --output DP-1 --off
elif [ "$1" == "2" ]; then
    xrandr --output eDP-1 --auto --output HDMI-1 --auto --right-of eDP-1 --output DP-1 --off
elif [ "$1" == "3" ]; then
    xrandr --output eDP-1 --auto --output HDMI-1 --auto --right-of eDP-1 --output DP-1 --auto --right-of HDMI-1
fi

nitrogen --restore
