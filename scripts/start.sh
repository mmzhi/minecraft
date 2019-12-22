#!/bin/bash
# -----------------------------------------------------------------------------
# docker-minecraft /start.sh script
# -----------------------------------------------------------------------------

server="minecraft_server.1.15.1.jar"

if [ ! -f /data/$server ]
then
    curl "https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar" -o /data/$server
fi

if [ ! -f /data/eula.txt ]
then
    echo "eula=true" > /data/eula.txt
fi

exec java -Xmx2G -jar $server nogui
