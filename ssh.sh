#!/bin/bash

#connects to a given ssh

userName=""
port=0
ip="kalenpw.com"

ssid=$(iwgetid -r)
localIpAddr=$(hostname -I)
ip="kalenpw.com"

if [ "$1" == "server" ]; then
    echo "Connecting to khalidor"
    userName="kalenpw"
    port=23
    if [ "$ssid" == "bowman_farm_west" ]; then
        ip="192.168.0.6"
    fi
fi

if [ "$1" == "pi" ]; then
    echo "Connecting to raspberry pi"
    userName="pi"
    port=22
    ip="192.168.0.10"
fi

if [ "$1" == "desktop" ]; then
    echo "Connecting to desktop"
    userName="kalenpw"
    port=24
    ip="kalenpw.com"
    if [ "$ssid" == "bowman_farm_west" ]; then
        ip="192.168.0.5"
    fi
fi


ssh $userName@$ip -p $port 
