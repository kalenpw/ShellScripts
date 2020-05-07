#!/bin/bash

work_monitor="HDMI2"
internal_monitor="eDP1"

monitors=$(xrandr | grep " connected " | awk '{ print$1 }')
#below only gets when activ

#monitors=$(xrandr | awk '/\ connected/ && /[[:digit:]]x[[:digit:]].*+/{print $1}')

if [[ $monitors == *"$work_monitor"* ]]; then
    xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 312x1440 --rotate normal --output DP1 --off --output HDMI2 --mode 2560x1440 --pos 0x0 --rotate normal --output HDMI1 --off --output DP2 --off
else 
    xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off
fi

