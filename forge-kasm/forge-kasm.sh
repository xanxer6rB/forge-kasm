#!/bin/bash

# forge-kasm build script test

echo "This is an attempt at a build script for forge-gui-desktop that is to be ran after container setup that's still a wip"

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

wget https://downloads.cardforge.org/dailysnapshots/forge-gui-desktop-1.6.59-SNAPSHOT-11-24.tar.bz2

# First extract forge-gui-desktop-SNAPSHOT using bzip2
bzip2 -d forge-gui-desktop-1.6.59-SNAPSHOT-11-24.tar.bz2
wait
# Second extract forge-gui-desktop-SNAPSHOT using tar
tar -xf forge-gui-desktop-1.6.59-SNAPSHOT-11-24.tar.bz2
wait
# Remove forge-gui-desktop-SNAPSHOT
rm forge-gui-desktop-1.6.59-SNAPSHOT-11-24.tar.bz2

# Change permissions of .sh files
chmod +x *.sh

echo "use command ./forge/forge.sh to run forge-gui-desktop"
