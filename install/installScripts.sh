#!/bin/bash
echo "Installing scripts to /usr/local/bin/..."

sudo rm /usr/local/bin/installScripts.sh
sudo cp -fv ../* /usr/local/bin/
