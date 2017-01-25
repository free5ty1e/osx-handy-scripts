#!/bin/bash
echo "Updating osx-handy-scripts in /usr/local/bin/..."

pushd ~/osx-handy-scripts
git pull

install/installScripts.sh
popd
