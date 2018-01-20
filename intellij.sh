#!/bin/bash

#Launches intellij

pcname=$(hostname)

if [ "$pcname" == "kalenpwT420s" ]; then
    /opt/idea-IC-173.3727.127/bin/idea.sh    
else
    /opt/idea-IU-172.4343.14/bin/idea.sh
fi

