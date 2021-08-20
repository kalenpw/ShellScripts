#!/bin/bash

external_monitor="DVI-I-1-1"
internal_monitor="eDP1"

monitors=$(xrandr | grep " connected " | awk '{ print$1 }')
#below only gets when activ

#monitors=$(xrandr | awk '/\ connected/ && /[[:digit:]]x[[:digit:]].*+/{print $1}')

if [[ $monitors == *"$external_monitor"* ]]; then
    gsettings set org.gnome.desktop.background picture-uri file:///home/kalenpw/.var/app/org.gabmus.hydrapaper/cache/hydrapaper/merged_wallpaper.png
else 
    gsettings set org.gnome.desktop.background picture-uri file:///home/kalenpw/Pictures/Wallpapers/taki.jpg
fi

