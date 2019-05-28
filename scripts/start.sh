#!/bin/bash
# -----------------------------------------------------------------------------
# docker-minecraft /start.sh script
# -----------------------------------------------------------------------------

server="minecraft_server.1.14.2.jar"

if [ ! -f /data/$server ]
then
    curl "https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar" -o /data/$server
fi

if [ ! -f /data/eula.txt ]
then
    echo "eula=true" > /data/eula.txt
fi

exec java -Xmx2G -jar $server nogui
