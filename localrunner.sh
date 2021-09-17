#!/bin/sh

sudo docker pull ubuntu

sudo docker build -t ubuntu:latest .

sudo docker rm -f IPAA

# docker run -it --hostname ipaclient.greatwestlifedigital.net --privileged --name dh_idm dh-idm-agent:latest bash

sudo docker run -it -d -p 25565:25565 --name IPAA --hostname Minecraft_server_Alpine  -v /media/james/pi-ssd/share_files/minecraft_server:/root/minecraft ubuntu:latest

sudo bash serversetup.sh

sudo docker exec -it IPAA bash



