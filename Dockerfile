FROM debian:stretch-slim

RUN apt update && apt upgrade -y && apt install -y lib32gcc1 curl
RUN mkdir ~/steam
WORKDIR /root/steam
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
RUN ./steamcmd.sh +login anonymous +force_install_dir ./7dtd/ +app_update 294420 +quit
WORKDIR /root/steam/7dtd
ENTRYPOINT ["./startserver.sh","-configfile=./serverconfig.xml"]
