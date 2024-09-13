
# install VM solution
brew install qemu

# install Vagrant with QEMU support
brew install --cask vagrant
vagrant plugin install vagrant-qemu

vagrant up --provider=qemu