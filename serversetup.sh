#!/bin/bash

docker exec -it IPAA cd minecraft_server

docker exec -it IPAA wget https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar

docker exec -it IPAA mv server.jar minecraft_server.jar

docker exec -it IPAA java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui

docker exec -it IPAA cd ..

docker exec -it IPAA cp  eula.txt /minecraft/minecraft_server

docker exec -it IPAA 

# COPY eula.txt /root/minecraft/minecraft
