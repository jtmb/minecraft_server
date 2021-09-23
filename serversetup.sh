#!/bin/bash

docker exec -it minecraft-server cd minecraft_server

docker exec -it minecraft-server wget https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar

docker exec -it minecraft-server mv server.jar minecraft_server.jar

docker exec -it minecraft-server java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui

docker exec -it minecraft-server cd ..

docker exec -it minecraft-server cp eula.txt /minecraft/minecraft_server

docker exec -it minecraft-server  

# COPY eula.txt /root/minecraft/minecraft
