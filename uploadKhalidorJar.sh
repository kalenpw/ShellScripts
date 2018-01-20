#!/bin/bash
#kalenpw
#compiles and uploads jar

#Plugin local directory
cd /media/kalenpw/FileServer/Documents/JavaProjects/TestPlugin/
mvn clean install


sftp -oPort=23 kalenpw@kalenpw.com:/home/kalenpw/Minecraft/PluginTesting/plugins <<EOF

#Upload file
put /home/kalenpw/.m2/repository/com/Khalidor/TestPlugin/0.0.1-SNAPSHOT/TestPlugin-0.0.1-SNAPSHOT.jar

exit
EOF
