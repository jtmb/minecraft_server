#!/bin/sh

sudo docker pull ubuntu

sudo docker build -t ubuntu:latest .

sudo docker rm -f minecraft-server

# docker run -it --hostname ipaclient.greatwestlifedigital.net --privileged --name dh_idm dh-idm-agent:latest bash

sudo docker run -it -d -p 25565:25565 --name minecraft-server --hostname minecraft-server -v /home/uadmin/docker-container-data/minecraft_server:/root/minecraft ubuntu:latest

sudo bash serversetup.sh

sudo docker exec -it minecraft-server bash



