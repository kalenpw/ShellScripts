#!/bin/bash

#converts youtube video to mp3

youtube-dl --extract-audio --audio-format mp3 $1
