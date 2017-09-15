#!/bin/bash

#Cleans up downloads folder

picturesDir=""
downloadsDir="/home/kalenpw/Downloads/"
pictureExtensions=("png" "jpg" "jpeg")
verbose=false
pcname=$(hostname)

if [ "$pcname" == "kalenpwT420s" ]; then
    picturesDir="/media/kalenpw/SDCard/Pictures/Misc/"
else
    picturesDir="/media/kalenpw/HDD/Pictures/Misc/"
fi

#Check if verbose
if [ "$1" == "-v" ]; then
    verbose=true
else
    verbose=false
fi

#Move pictures
for i in "${pictureExtensions[@]}"
do
    if $verbose; then
        mv -v -n $downloadsDir*$i $picturesDir
    else
        mv -n $downloadsDir*$i $picturesDir
    fi
done
