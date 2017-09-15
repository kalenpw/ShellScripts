#!/bin/bash

#Launch an instance of webstorm

pcname=$(hostname)

if [ "$pcname" == "kalenpwT420s" ]; then
    /opt/WebStorm-172.4155.35/bin/webstorm.sh & disown   
else
    echo "Kalen install WebStorm on desktop"
fi
