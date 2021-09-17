#!/bin/sh

docker build -t ubuntu:latest .

docker rm -f IPAA

# docker run -it --hostname ipaclient.greatwestlifedigital.net --privileged --name dh_idm dh-idm-agent:latest bash

docker run -it -d -p 25565:25565 --name IPAA --hostname Minecraft_server_Alpine  -v /media/james/pi-ssd/share_files/minecraft_server:/root/minecraft ubuntu:latest

bash serversetup.sh

docker exec -it IPAA bash



