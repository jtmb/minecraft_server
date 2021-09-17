FROM ubuntu:latest

RUN apt-get update
RUN apt install -y openjdk-8-jre-headless
RUN apt install -y wget


WORKDIR /root/minecraft

# COPY ipa.sh .