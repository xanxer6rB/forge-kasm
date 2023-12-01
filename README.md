# How-to-Play forge-gui-desktop using KasmVNC - forge-kasmvnc
# UPDATE
Everything has now been conolidated into a Dockerfile

# To create the image using sudo
docker build -t forge-kasm .

# To run the container using sudo
docker run -it -p 3000:3000 forge-kasm bash
# To run the container detatched running in the background
docker run -d -it -p 3000:3000 forge-kasm bash

After the container is running, access container at YOUR-IP:3000, localhost:3000 in your web browser.
After accessing the container in your browser run one of the following commands:
  To play forge-gui-dekstop: ./forge.sh
  To play forge-adventure: ./forge-adventure.sh


I do not own either projects Forge or KasmVNC in any way.

Just a Forge user whom wants to contribute to the Forge community.

I give big thanks to the devs and creators of KasmVNC. It does all the heavey lifting for helping run applications through a browser.
