# How-to-Play forge-gui-desktop using KasmVNC - forge-kasmvnc

Everything has now been conolidated into a Dockerfile

# To create the image using sudo
docker build -t forge-kasm .

# To run the container using sudo
sudo docker run -it -p 3000:3000 forge-kasm bash

After the container is running, access container at YOUR-IP:3000, localhost:3000 in your web browser.

I do not own either projects Forge or KasmVNC in any way.

Just a Forge user whom wants to contribute to the Forge community.

I give big thanks to the devs and creators of KasmVNC. It does all the heavey lifting for helping run applications through a browser.
