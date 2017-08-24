#!/bin/bash

#connects to a given ssh

userName=""
port=0
ip=""

if [ "$1" == "server" ]; then
    echo "Connecting to khalidor"
    userName="kalenpw"
    port=23
    ip="96.19.26.253"
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
    ip="96.19.26.253"
fi


ssh $userName@$ip -p $port 
