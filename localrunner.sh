docker rm -f mc

docker run -d -v /home/james/container-program-files/fileserver_share_files/minecraft-server:/data \
    -e TYPE=PAPER \
    -e MEMORY=4G \
    -e MAX_MEMORY=4G \
    -e INIT_MEMORY=2G \
    -e MOTD="Defeating a sandwitch only makes it tastier." \
    -e ENABLE_RCON=true \
    -e RCON_PASSWORD=MyMilkshakeBringsAllTheBoys2DaYard \
    -e EXEC_DIRECTLY=true \
    -e TZ=America/Toronto \
    --cpus="4" \
    -p 25565:25565 -e EULA=TRUE --name mc itzg/minecraft-server



# instructions https://github.com/itzg/docker-minecraft-server/blob/master/README.md#memory-limit
