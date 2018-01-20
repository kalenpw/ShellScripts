#!/bin/bash
echo "Use Khalidor password"
echo "Mounting Fileserver"
sshfs kalenpw@kalenpw.com:/media/kalenpw/Files /media/kalenpw/FileServer/ -p 23
echo "Mounting Music"
sshfs kalenpw@kalenpw.com:/media/kalenpw/Music /media/kalenpw/Music/ -p 23
