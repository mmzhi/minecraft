#!/bin/bash
# -----------------------------------------------------------------------------
# docker-minecraft /start.sh script
# -----------------------------------------------------------------------------

server="minecraft_server.1.14.jar"

if [ ! -f /data/$server ]
then
    curl "https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar" -o /data/$server
fi

if [ ! -f /data/eula.txt ]
then
    echo "eula=true" > /data/eula.txt
fi

exec java -Xmx2G -jar $server nogui
