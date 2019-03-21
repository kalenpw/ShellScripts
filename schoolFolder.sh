#!/bin/bash

#Opens an instance of thunar to school directory

pcname=$(hostname)
schoolDir=""

if [ "$pcname" == "kalenpwT420s" ]; then
    schoolDir="/home/kalenpw/Documents/School/2019Spring/"
else
    schoolDir="/media/kalenpw/HDD/Documents/School/2019Spring"
fi

thunar $schoolDir
