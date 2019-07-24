#!/bin/bash
# -----------------------------------------------------------------------------
# docker-minecraft /start.sh script
# -----------------------------------------------------------------------------

server="minecraft_server.1.14.4.jar"

if [ ! -f /data/$server ]
then
    curl "https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar" -o /data/$server
fi

if [ ! -f /data/eula.txt ]
then
    echo "eula=true" > /data/eula.txt
fi

exec java -Xmx2G -jar $server nogui
