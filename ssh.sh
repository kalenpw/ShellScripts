#!/bin/bash

#connects to a given ssh

userName=""
port=0
ssid=$(iwgetid -r)
localIpAddr=$(hostname -I)
ip="kalen.pw"
userName="kalenpw"

if [ "$1" == "server" ]; then
    echo "Connecting to khalidor"
    port=23
fi

if [ "$1" == "pi" ]; then
    echo "Connecting to raspberry pi"
    userName="pi"
    port=22
    ip="192.168.0.10"
fi

if [ "$1" == "desktop" ]; then
    echo "Connecting to desktop"
    port=24
fi


ssh $userName@$ip -p $port 
