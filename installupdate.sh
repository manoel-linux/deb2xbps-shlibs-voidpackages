#!/bin/bash

if [ "$(uname -m)" != "x86_64" ]; then
echo "#################################################################"
echo " ██████  ██████        ██████  ██ ████████ "
echo "      ██      ██       ██   ██ ██    ██    "
echo "  █████   █████  █████ ██████  ██    ██    "
echo "      ██ ██            ██   ██ ██    ██    "
echo " ██████  ███████       ██████  ██    ██    "                                                                                    
echo "#################################################################"
echo "The deb2xbps tool cannot be executed on a 32-bit system. Support for 32-bit systems has been discontinued."
echo "#################################################################"
exit 1
fi

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
echo "The support for 32-bit has been deprecated"
echo "#################################################################"
echo "The support for 32-bit .deb packages has been discontinued."
echo "If you try to install the discontinued 32-bit .deb package, it will not install."
echo "The support for 32-bit in deb2xbps has also been discontinued."
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
