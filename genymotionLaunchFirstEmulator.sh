/Applications/Genymotion.app/Contents/MacOS/player.app/Contents/MacOS/player --vm-name "$(VBoxManage list vms | awk -F '"' '{print $2}')"
