#!/bin/bash

minecraft-server mkdir minecraft_server
wget https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar
mv server.jar minecraft_server.jar
java -Xmx2048M -Xms2048M -jar minecraft_server.jar nogui
cp /root/minecraft/eulatrue/eula.txt /root/minecraft/
java -Xmx4096M -Xms4096M -d -jar minecraft_server.jar nogui

echo SERVER UP
sudo ufw allow 25565

# COPY eula.txt /root/minecraft/min
