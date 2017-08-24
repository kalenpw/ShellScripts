#!/bin/bash
WINDOW_ID=$(xwininfo | grep "Window id" | cut -d" " -f4)
FILE_PATH=~/test.ogv
recordmydesktop --windowid $WINDOW_ID -o $FILE_PATH
