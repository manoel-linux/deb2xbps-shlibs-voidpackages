#!/bin/bash

echo "#################################################################"
echo "Checking for updates in Void Linux..." 
echo "#################################################################"
sudo xbps-install -Syu -y
echo "#################################################################"
echo "deb2xbps-uninstaller: june 2023 xdeb-based"
echo "#################################################################"
echo " ██████  ███████ ██████  ██████  ██   ██ ██████  ██████  ███████ "
echo " ██   ██ ██      ██   ██      ██  ██ ██  ██   ██ ██   ██ ██      "
echo " ██   ██ █████   ██████   █████    ███   ██████  ██████  ███████ "
echo " ██   ██ ██      ██   ██ ██       ██ ██  ██   ██ ██           ██ "
echo " ██████  ███████ ██████  ███████ ██   ██ ██████  ██      ███████ "
echo "#################################################################"
echo "deb2xbps-github: https://github.com/manoel-linux/deb2xbps-shlibs-voidpackages"
echo "xdeb-github: https://github.com/toluschr/xdeb"
echo "#################################################################"
echo "$(date)"
echo "linux $(uname -r)"
echo "#################################################################"

if [[ $EUID -ne 0 ]]; then
   echo "ERROR! sudo needed" 
   exit 1
fi

rm /usr/bin/deb2xbps

echo "DONE! Uninstallation completed."
