#!/bin/bash

#change to school directory

pcname=$(hostname)
documentDir=""
schoolDir=""
togoDir=""

if [ "$pcname" == "kalenpwT420s" ]; then
    schoolDir="/home/kalenpw/Documents/School/2018Fall/"
    documentDir="/home/kalenpw/Documents/"
else
    schoolDir="/media/kalenpw/HDD/Documents/School/2018Fall"
    documentDir="/home/kalenpw/HDD/Documents/"
fi

if [ "$1" == "work" ]; then
    togoDir="/Work"
fi

if [ "$1" == "school" ]; then
    togoDir="/School/2018Fall"
fi

cd $documentDir$togoDir
