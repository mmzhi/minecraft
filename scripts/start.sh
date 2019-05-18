#!/bin/bash
# -----------------------------------------------------------------------------
# docker-minecraft /start.sh script
# -----------------------------------------------------------------------------

server="minecraft_server.1.14.1.jar"

if [ ! -f /data/$server ]
then
    curl "https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar" -o /data/$server
fi

if [ ! -f /data/eula.txt ]
then
    echo "eula=true" > /data/eula.txt
fi

exec java -Xmx2G -jar $server nogui
