#!/bin/bash


wget https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar

mv server.jar minecraft_server.jar

java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui

# COPY eula.txt /root/minecraft/minecraft

java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui
