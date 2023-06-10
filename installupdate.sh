#!/bin/bash

 echo "################################################################"
 echo "Checking for updates in Void Linux..." 
 echo "################################################################"
if ping -q -c 1 -W 1 voidlinux.org >/dev/null; then
  echo "Internet connection established. It is possible to check for updates."
  echo "###############################################################"
  sudo xbps-install -Syu -y
  sudo xbps-install -S glxinfo unzip binutils tar curl xbps xz -y
else
  echo "###############################################################"
  echo "Without internet connection. Unable to check for updates."
fi
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
   exit 1
fi

rm /usr/bin/deb2xbps

cp deb2xbps /usr/bin/

chmod +x /usr/bin/deb2xbps

echo "DONE! Installation/Update completed."
