#!/bin/bash

docker exec -it minecraft-server cd minecraft_server && /
  wget https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar /
  mv server.jar minecraft_server.jar / 
  java -Xmx4096M -Xms4096M -jar minecraft_server.jar nogui /
  cd .. /
  cp eula.txt /minecraft /
  java -Xmx4096M -Xms4096M -jar minecraft_server.jar nogui /
  echo SERVER UP

# COPY eula.txt /root/minecraft/minecraft
