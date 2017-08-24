#!/bin/bash

#Cleans up downloads folder

picturesDir="/media/kalenpw/HDD/Pictures/Misc/"
downloadsDir="/home/kalenpw/Downloads/"
pictureExtensions=("png" "jpg" "jpeg")
verbose=false

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
        mv -v -n $downloadsDir*$i $pictureExtensions 
    else
        mv -n $downloadsDir*$i $pictureExtensions 
    fi
done
