#!/bin/bash
rm -rf forge
mkdir forge
cd forge
wget -r -l1 -np "https://downloads.cardforge.org/dailysnapshots/" -A "forge-gui-desktop-*.tar.bz2"
mv downloads.cardforge.org/dailysnapshots/*.tar.bz2 /forge
rm -rf downloads.cardforge.org/dailysnapshots/old downloads.cardforge.org/ downloads.cardforge.org/dailysnapshots/ downloads.cardforge.org
echo "EXTRACTING FILES PLEASE WAIT, THIS WILL TAKE SOME TIME..."
bzip2 -d *.tar.bz2
tar -xf *.tar
rm *.tar
chmod +x *.sh
echo "UPDATE COMPLETE"
