FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y openjdk-8-jre-headless

# RUN cd /root/minecraft && mkdir minecraft_server && cd minecraft_server

WORKDIR /root/minecraft/minecraft_server

COPY serversetup.sh /root/minecraft/minecraft_server

RUN /root/minecraft/minecraft_server/serversetup.sh

COPY eula.txt /root/minecraft/minecraft_server

RUN java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui



# COPY ipa.sh .