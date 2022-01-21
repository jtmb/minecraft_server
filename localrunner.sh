docker run -d -v /home/james/container-program-files/minecraft-server:/data \
    -e TYPE=PAPER \
    -p 25565:25565 -e EULA=TRUE --name mc itzg/minecraft-server
