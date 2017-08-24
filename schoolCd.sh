#!/bin/bash

#change to school directory

if [ "$#" -eq "1" ]; then
    projectNumber="$1"
    cd /home/kalenpw/Documents/School/2017Spring/CS3385/p$1

else
    cd /home/kalenpw/Documents/School/2017Fall
fi
