FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy
RUN apt-get update; apt-get upgrade -y; apt-get install -y wget nano bzip2 openjdk-11-jdk jq
RUN wget -r -l1 -np "https://downloads.cardforge.org/dailysnapshots/" -A "forge-gui-desktop-*.tar.bz2"; mkdir -p /forge; cd /forge; mv /downloads.cardforge.org/dailysnapshots/*.tar.bz2 /forge/; rm -rf /downloads.cardforge.org/dailysnapshots/old /downloads.cardforge.org/ /downloads.cardforge.org/dailysnapshots/ /downloads.cardforge.org; echo "EXTRACTING FILES PLEASE WAIT, THIS MAY TAKE SOME TIME..."; bzip2 -d *.tar.bz2;tar -xf *.tar; rm *.tar; chmod +x *.sh
RUN touch forge.sh forge-adventure.sh update-forge.sh remove-forge.sh; echo "rm -rf forge" >> remove-forge.sh; echo "./forge/forge.sh" >> forge.sh; echo "./forge/forge-adventure.sh" >> forge-adventure.sh; echo "./forge-update/update-forge-gui-desktop-SNAPSHOT.sh" >> update-forge.sh; chmod +x forge.sh forge-adventure.sh update-forge.sh remove-forge.sh
COPY /forge-update /forge-update
EXPOSE 3000
