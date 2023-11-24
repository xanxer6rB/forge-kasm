# forge-kasmvnc
Play forge-gui-desktop in a docker container using KasmVNC

The docker-compose file was built, ran/tested, and exported from a Zimaboard 832 running casaos.

You do not need casaos to use this, just docker and docker-compose

# Build and create kasmVNC container

Use command on compose file: docker-compose up -d

After the container is running, access container at YOUR-IP:3000, localhost:3000 in your web browser.

# Build script
Use sudo when using build script.

forge-kasm.sh is a build script in testing that is used inside of the kasm container to finish setup.
