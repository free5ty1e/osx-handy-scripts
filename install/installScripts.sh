#!/bin/bash
pwd
echo "Changing current directory to location of script..."
pushd "${0%/*}"
pwd
echo "Installing scripts to /usr/local/bin/..."

sudo rm /usr/local/bin/installScripts.sh
sudo cp -fv ../* /usr/local/bin/
popd
