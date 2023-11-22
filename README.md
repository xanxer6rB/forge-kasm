# forge-kasmvnc
Play forge-gui-desktop in a docker container using KasmVNC

The docker-compose file was built, ran/tested, and exported from a Zimaboard 832 running casaos.

# Build and create a kasmVNC container
docker-compose up -d

Access container at http://YOUR-IP:3000, http://localhost:3000
Once inside the container do the following. (Automation script WIP)

# Create a forge directory
mkdir forge

# Update and Upgrade
sudo apt update; sudo apt upgrade -y

# Install additional packages
sudo apt install -y wget nano bzip2 jq openjdk-11-jdk 

# Change into /forge directory
cd forge

# Download latest forge-gui-desktop-SNAPSHOT file into /forge directory using wget
wget downloads dot cardforge dot org/dailysnapshots/forge-gui-desktop-*-SNAPSHOT-*.tar.bz2

# First extract forge-gui-desktop-SNAPSHOT using bzip2
bzip2 -d forge-gui-desktop-*-SNAPSHOT-*.tar.bz2

# Second extract forge-gui-desktop-SNAPSHOT using tar
tar -xf forge-gui-desktop-*-SNAPSHOT-*.tar

# Remove forge-gui-desktop-SNAPSHOT
rm forge-gui-desktop-*-SNAPSHOT-*.tar

# Change permissions of .sh files
chmod +x *.sh files

# run forge
./forge/forge.sh
