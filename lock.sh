#!/bin/bash

#Lock screen which sets lock to pixelated version of desktop

TEMP_FILE=/tmp/lock.png
TEMP_FILE_POST=/tmp/lock.modified.png
BAR_BG_COLOR="black"
BAR_FONT_COLOR="white"
BAR_FONT="Source-Code-Pro-Black"
BAR_WIDTH="4000"
BAR_HEIGHT="30"
MOGRIFY_OPTS="-scale 10% -scale 1000% $TEMP_FILE"
MESSAGE="-$USER"
#CONVERT_OPTS="-background $BAR_BG_COLOR -gravity center -fill $BAR_FONT_COLOR -font $BAR_FONT -size ${BAR_WIDTH}x${BAR_HEIGHT} caption:$MESSAGE- $TEMP_FILE +swap -composite $TEMP_FILE_POST"

rm $TEMP_FILE $TEMP_FILE_POST
scrot $TEMP_FILE
mogrify $MOGRIFY_OPTS
#echo $MESSAGE | tr -d "\n" | convert $CONVERT_OPTS
#i3lock -i $TEMP_FILE_POST

i3lock -u -i $TEMP_FILE
