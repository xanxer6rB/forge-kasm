# forge-kasmvnc
Play forge-gui-desktop in a docker container using KasmVNC

The docker-compose file was built, ran/tested, and exported from a Zimaboard 832 running casaos.

You do not need casaos to use this, just docker and docker-compose

# Build and create a kasmVNC container

docker-compose up -d

# Build script
forge-kasm.sh is a build script in testing that is used inside of the kasm container to finish setup.