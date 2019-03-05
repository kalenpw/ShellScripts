#!/bin/bash

work_monitor="HDMI-1"
internal_monitor="LVDS-1"

monitors=$(xrandr | grep " connected " | awk '{ print$1 }')
#below only gets when activ

#monitors=$(xrandr | awk '/\ connected/ && /[[:digit:]]x[[:digit:]].*+/{print $1}')

if [[ $monitors == *"$work_monitor"* ]]; then
    xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --off --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal --output LVDS-1 --mode 1600x900 --pos 1920x632 --rotate normal --output VGA1 --off
else
    xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --off --output HDMI-1 --off --output LVDS-1 --mode 1600x900 --pos 0x0 --rotate normal --output VGA1 --off
fi

