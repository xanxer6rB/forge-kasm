#!/bin/bash

echo "FORGE-GUI-DESKTOP BUILD SCRIPT TEST - forge-kasm"
mkdir forge
apt update; sudo apt upgrade -y
apt install -y wget nano bzip2 jq openjdk-11-jdk
wait
cd forge
wget https://downloads.cardforge.org/dailysnapshots/forge-gui-desktop-1.6.59-SNAPSHOT-11-26.tar.bz2
echo "EXTRACTING FILES PLEASE WAIT"
bzip2 -d forge-gui-desktop-1.6.59-SNAPSHOT-11-26.tar.bz2
tar -xf forge-gui-desktop-1.6.59-SNAPSHOT-11-26.tar
rm forge-gui-desktop-1.6.59-SNAPSHOT-11-26.tar
chmod +x *.sh
echo "DONE"
echo -e "SETUP COMPLETE. \nUSE COMMAND: \nFORGE-GUI-DESKTOP: ./forge/forge.sh \nFORGE-ADVENTURE: ./forge/forge-adventure.sh"
