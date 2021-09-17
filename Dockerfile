FROM ubuntu:latest

RUN apt-get update
RUN apt install -y openjdk-16-jre && apt install openjdk-16-jdk-headless
RUN apt install -y wget


WORKDIR /root/minecraft

# COPY ipa.sh .