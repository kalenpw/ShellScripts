#!/bin/bash
WINDOW_ID=$(xwininfo | grep "Window id" | cut -d" " -f4)
FILE_PATH=~/tmp/test.ogv
DATE=$(date +%Y-%m-%d)
recordmydesktop --windowid $WINDOW_ID -o $FILE_PATH
cd ~/tmp/
ffmpeg -i test.ogv $DATE.webm
