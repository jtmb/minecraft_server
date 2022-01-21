docker rm -f mc

docker run -d -v /home/james/container-program-files/minecraft-server:/data \
    -e TYPE=PAPER \
    -e MEMORY=4G \
    -e MAX_MEMORY=4G \
    -e MOTD="CICD Minecraft"
    -e EXEC_DIRECTLY=true \
    -e TUNE_VIRTUALIZED=TRUE \
    -e TZ=America/Toronto \
    -p 25565:25565 -e EULA=TRUE --name mc itzg/minecraft-server



# instructions https://github.com/itzg/docker-minecraft-server/blob/master/README.md#memory-limit
