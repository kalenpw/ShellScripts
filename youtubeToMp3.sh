#!/bin/bash

#converts youtube video to mp3

cd /home/kalenpw/Downloads/
youtube-dl --extract-audio --audio-format mp3 $1
