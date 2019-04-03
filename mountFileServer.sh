#!/bin/bash

ssid=$(iwgetid -r)
serverIp="kalen.pw"


echo "Use Khalidor password"
echo "Mounting Fileserver"
sshfs kalenpw@$serverIp:/media/kalenpw/Files /media/kalenpw/FileServer/ -oauto_cache,reconnect -p 23 
echo "Mounting Music"
sshfs kalenpw@$serverIp:/media/kalenpw/Music /media/kalenpw/Music/ -oauto_cache,reconnect -p 23
