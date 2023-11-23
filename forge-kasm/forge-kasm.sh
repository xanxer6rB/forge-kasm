#!/bin/bash

# forge-kasm build script test

# Build and create a kasmVNC container
docker-compose up -d

echo "Access container at YOUR-IP:3000, localhost:3000. (forge-kasm build script WIP)."

# Replace: forge-gui-desktop-*-SNAPSHOT-*.tar.bz2 with the latest version.

# Create a forge directory
mkdir forge

# Update and Upgrade using sudo
sudo apt update; sudo apt upgrade -y

# Install additional packages usign sudo
sudo apt install -y wget nano bzip2 jq openjdk-11-jdk 

# Change into /forge directory
cd forge

# Download latest forge-gui-desktop-SNAPSHOT file into /forge directory using wget

wget https://downloads.cardforge.org/dailysnapshots/forge-gui-desktop-1.6.59-SNAPSHOT-11-22.tar.bz2

# First extract forge-gui-desktop-SNAPSHOT using bzip2
bzip2 -d forge-gui-desktop-1.6.59-SNAPSHOT-11-22.tar.bz2
wait
# Second extract forge-gui-desktop-SNAPSHOT using tar
tar -xf forge-gui-desktop-1.6.59-SNAPSHOT-11-22.tar.bz2
wait
# Remove forge-gui-desktop-SNAPSHOT
rm forge-gui-desktop-1.6.59-SNAPSHOT-11-22.tar.bz2

# Change permissions of .sh files
chmod +x *.sh

echo "use command ./forge/forge.sh to run forge-gui-desktop"