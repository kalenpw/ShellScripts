#!/bin/bash

#Launches an instance of phpstorm

pcname=$(hostname)
if [ "$pcname" == "kalenpwT420s" ]; then
    /opt/PhpStorm-172.4155.41/bin/phpstorm.sh & disown
else
    /opt/PhpStorm-172.4155.25/bin/phpstorm.sh & disown
fi
