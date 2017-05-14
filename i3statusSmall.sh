#!/bin/bash

i3status | while :
do
    ram="$(awk '/MemTotal/ {memtotal=$2}; /MemAvailable/ {memavail=$2}; END { printf("%.0f", (100- (memavail / memtotal * 100))) }' /proc/meminfo)"
    formatted="RAM: $ram%"
    read line
    echo "$formatted | $line" || exit 1

done
