FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy
RUN apt-get update; apt-get upgrade -y && apt-get install wget nano bzip2 openjdk-11-jdk jq -y
RUN mkdir -p /forge; cd /forge; wget https://downloads.cardforge.org/dailysnapshots/forge-gui-desktop-1.6.59-SNAPSHOT-11-30.tar.bz2; bzip2 -d forge-gui-desktop-1.6.59-SNAPSHOT-11-30.tar.bz2; tar -xf forge-gui-desktop-1.6.59-SNAPSHOT-11-30.tar; rm forge-gui-desktop-1.6.59-SNAPSHOT-11-30.tar; chmod +x *.sh
RUN touch forge-gui-desktop.sh; chmod +x forge-gui-desktop.sh; echo "./forge/forge.sh" >> forge-gui-desktop.sh
EXPOSE 3000
