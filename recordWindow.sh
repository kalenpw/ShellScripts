#!/bin/bash

#Records a window clicked on and converts to .webm

DATE=$(date +%Y-%m-%d)
WINDOW_ID=$(xwininfo | grep "Window id" | cut -d" " -f4)
FILE_PATH=~/tmp/$DATE.ogv

echo $FILE_PATH

recordmydesktop --windowid $WINDOW_ID -o $FILE_PATH
cd ~/tmp/
ffmpeg -i $FILE_PATH $DATE.webm
