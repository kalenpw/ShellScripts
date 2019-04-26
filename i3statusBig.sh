#!/bin/bash


i3status | while :
do
    #weather=$(/home/kalenpw/Documents/ShellScripts/weather.sh)
    artist="$(cmus-remote -Q | sed -n -e 's/^.*tag artist //p')"
    song="$(cmus-remote -Q | sed -n -e 's/^.*tag title //p')"
    
    cmusOut=$(echo $artist - $song | cut -c 1-50)

    if [ $# -eq 0 ]
    then
        cmusOut=$(echo $artist - $song)
    fi

    ram="$(awk '/MemTotal/ {memtotal=$2}; /MemAvailable/ {memavail=$2}; END { printf("%.0f", (100- (memavail / memtotal * 100))) }' /proc/meminfo)"
    #formatted="$artist - $song | W: $weather | RAM: $ram%"
    formatted="$cmusOut | RAM: $ram%"
    read line
    if [[ $(date +%u) -eq "5" ]]; then
        time=$(timeToFive.py)
        beerTime="🍺 $time |"
        echo -e "$beerTime $formatted | $line" || exit 1
    else
        echo -e "$formatted | $line" || exit 1
    fi


done
