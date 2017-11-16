#!/bin/bash

#Reconnect to file server in event connection dies

sshfs -o reconnect kalenpw@96.19.26.253:/media/kalenpw/FileServer/
sshfs -o reconnect kalenpw@96.19.26.253:/media/kalenpw/Music/
