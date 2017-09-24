#!/bin/bash

i3status | while :
do
    weather=$(/home/kalenpw/Documents/ShellScripts/weather.sh)
    artist="$(cmus-remote -Q | sed -n -e 's/^.*tag artist //p')"
    song="$(cmus-remote -Q | sed -n -e 's/^.*tag title //p')"

    ram="$(awk '/MemTotal/ {memtotal=$2}; /MemAvailable/ {memavail=$2}; END { printf("%.0f", (100- (memavail / memtotal * 100))) }' /proc/meminfo)"
    formatted="$artist - $song | W: $weather | RAM: $ram%"
    read line
    echo "$formatted | $line" || exit 1

done
