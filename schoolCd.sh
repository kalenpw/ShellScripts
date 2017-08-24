#!/bin/bash

#change to school directory

pcname=$(hostname)
schoolDir=""

if [ "$pcname" == "kalenpwT420s" ]; then
    schoolDir="/home/kalenpw/Documents/School/2017Fall/"
else
    schoolDir="/media/kalenpw/HDD/Documents/School/2017Fall"
fi

cd $schoolDir
