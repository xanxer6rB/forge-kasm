# UPDATE - Everything has now been consolidated into a Dockerfile

# How-to-Play forge-gui-desktop using linuxserver/baseimage-kasmvnc - forge-kasm

# To create the image
docker build -t forge-kasm .

# To run the container
docker run -it -p 3000:3000 forge-kasm bash
# To run the container detatched running in the background
docker run -d -it -p 3000:3000 forge-kasm bash

# To Access container
After the container is running, access container at YOUR-IP:3000, localhost:3000 in your web browser.
After accessing the container in your browser run one of the following commands:

  - To play forge-gui-dekstop: bash /forge.sh
  
  - To play forge-adventure: bash /forge-adventure.sh
  - To use forge-adventure-editor: bash /forge-adventure-editor.sh

  - To remove forge directory: bash /remove-forge.sh

  - To update forge: bash /update-forge.sh


I do not own Forge, linuxserver/baseimage-kasmvnc or KasmVNC in any way.

Just a Forge user whom wants to contribute to the Forge community.

I give big thanks to the devs and creators at linuxserver for their basicimage-kasmvnc. It does all the heavey lifting for helping run applications through a browser.
