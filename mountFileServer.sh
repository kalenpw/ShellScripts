#!/bin/bash

ssid=$(iwgetid -r)
serverIp="kalenpw.tk"
if [ "$ssid" == "bowman_farm_west" ]; then
    echo "Connecting locally"
    serverIp="192.168.0.6"
fi


echo "Use Khalidor password"
echo "Mounting Fileserver"
sshfs kalenpw@$serverIp:/media/kalenpw/Files /media/kalenpw/FileServer/ -p 23
echo "Mounting Music"
sshfs kalenpw@$serverIp:/media/kalenpw/Music /media/kalenpw/Music/ -p 23
