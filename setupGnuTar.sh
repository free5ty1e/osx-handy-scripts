#!/bin/bash

brew install gnu-tar
tar --version
ll `which tar`
sudo unlink `which tar`
sudo ln -s `which gtar` /usr/bin/tar
tar --version

#to switch back to Mac's tar:
#tar --version
#ll `which tar`
#sudo unlink `which tar`
#sudo ln -s `which bsdtar` /usr/bin/tar
#tar --version
