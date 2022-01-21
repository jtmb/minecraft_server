docker run -d -v /home/james/container-program-files/minecraft-server:/data \
    -e TYPE=PAPER \
    -e MEMORY=2G \
    -p 25565:25565 -e EULA=TRUE --name mc itzg/minecraft-server



# instructions https://github.com/itzg/docker-minecraft-server/blob/master/README.md#memory-limit
