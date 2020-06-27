#!/bin/bash

work_monitor="DVI-I-1-1"
internal_monitor="eDP1"

monitors=$(xrandr | grep " connected " | awk '{ print$1 }')
#below only gets when activ

#monitors=$(xrandr | awk '/\ connected/ && /[[:digit:]]x[[:digit:]].*+/{print $1}')

if [[ $monitors == *"$work_monitor"* ]]; then
    xrandr --output DVI-I-1-1 --mode 2560x1440 --pos 0x0 --rotate normal --output eDP-1 --mode 1920x1080 --pos 344x1440 --rotate normal --output HDMI-2 --off --output HDMI-1 --off --output DP-2 --off --output DP-1 --off
else 
    xrandr --output DVI-I-1-1 --off --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-2 --off --output HDMI-1 --off --output DP-2 --off --output DP-1 --off
fi

