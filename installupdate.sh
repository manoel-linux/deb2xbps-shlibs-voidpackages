#!/bin/bash

clear
echo "#################################################################"
echo "Checking for updates in Void Linux..." 
echo "#################################################################"
if ping -q -c 1 -W 1 voidlinux.org >/dev/null; then
echo "Internet connection established. It is possible to check for updates."
echo "#################################################################"

read -p "Do you want to update your system? (y/n): " choice
echo "#################################################################"
if [[ $choice == "y" || $choice == "Y" ]]; then
sudo xbps-install -Syu -y
else
echo "Skipping system update."
echo "#################################################################"
sudo xbps-install glxinfo unzip binutils tar curl xbps xz -y
fi
else
echo "#################################################################"
echo "No internet connection. Unable to check for updates Skipping."
fi
clear
echo "#################################################################"
echo "deb2xbps-installer: june 2023 xdeb-based"
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
echo "Linux $(uname -r)"
echo "#################################################################"

if [[ $EUID -ne 0 ]]; then
echo "ERROR! sudo needed" 
echo "#################################################################"
exit 1
fi

rm /usr/bin/deb2xbps

cp deb2xbps /usr/bin/

chmod +x /usr/bin/deb2xbps

echo "DONE! Installation/Update completed."
echo "#################################################################"
