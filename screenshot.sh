#!/bin/bash

# From Bitterness

OUTPUTFOLDER=~/Pictures/Screenshots/
FILENAME=$(date +%Y-%m-%d_%T).png

case "$1" in
"-u")
    scrot "$FILENAME" -ub
    ;;
    #Couldn't get this to work for some reason
"-s")
    scrot --select "$FILENAME"
    ;;
*)
    scrot "$FILENAME"
    ;;
esac
mv "$FILENAME" "$OUTPUTFOLDER"
notify-send -i "$OUTPUTFOLDER""$FILENAME" "Screenshot taken" -t 10000
