# How-to-Play forge-gui-desktop using KasmVNC - forge-kasmvnc

The docker-compose file was exported from a Zimaboard 832.

The docker-compose file and build-script have been tested on linux based systems so far but having a windows based system with Docker Desktop may work as well (Have not tested yet).

# Build and create kasmVNC container

Use command on compose file: docker-compose up -d

After the container is running, access container at YOUR-IP:3000, localhost:3000 in your web browser.

# Build script
Use sudo when using build script.

forge-kasm.sh is a build script in testing that is used inside of the kasm container to finish setup.

I do not own either projects Forge or KasmVNC in any way.

Just a Forge user whom wants to contribute to the Forge community.

I give big thanks to the devs and creators of KasmVNC. It does all the heavey lifting for helping run applications through a browser.
