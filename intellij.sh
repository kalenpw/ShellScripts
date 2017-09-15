#!/bin/bash

#Launches intellij

pcname=$(hostname)

if [ "$pcname" == "kalenpwT420s" ]; then
    /opt/idea-IU-163.13906.18/bin/idea.sh    
else
    /opt/idea-IU-171.4249.39/bin/idea.sh
fi

