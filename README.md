# DEB2XBPS                                                                                                                                                     
- deb2xbps-version: july 2023

- It has been unlocked, now you can use deb2xbps without sudo or superuser.

- build-latest: 0.4.9

- The support for 32-bit .deb packages has been discontinued
- If you try to install the 32-bit .deb package, it may be converted, but it will not be installed due to the discontinued support for 32-bit.
- The support for 32-bit in deb2xbps has also been discontinued

- It is recommended to create a separate directory for installing .deb packages using DEB2XBPS. If you do not create a dedicated directory, deb2xbps may - ---- create files and folders in your current working directory, which can make it difficult to manage and remove them later on

- When using DEB2XBPS, it may create a "shlibs" directory that contains the necessary libraries (shlibs) required for installing the .deb packages. If you ---- accidentally create this directory, you can delete it without causing any harm to your system or the functionality of DEB2XBPS

- DEB2XBPS is an open-source project, and we are happy to share it with the community. You have complete freedom to do whatever you want with DEB2XBPS, in accordance with the terms of the MIT license. You can modify, distribute, use it in your own projects, or even create a fork of DEB2XBPS to add additional features

# Based on XDEB

- DEB2XBPS is a project based on the code of xdeb, a powerful package conversion tool. xdeb was a fundamental source of inspiration for the development of DEB2XBPS, and I would like to express my gratitude to the xdeb team for their incredible work. The original source code of xdeb can be found at: https://github.com/toluschr/xdeb.

## Installation

- To install DEB2XBPS, follow the steps below:

# 1. Clone this repository by running the following command

- git clone https://github.com/manoel-linux/deb2xbps-shlibs-voidpackages.git

# 2. To install the DEB2XBPS script, follow these steps

- chmod a+x `installupdate.sh`

- sudo `./installupdate.sh`

- When installing DEB2XBPS for the first time, you may encounter an error "`rm /usr/bin/deb2xbps`" if the file doesn't exist. This removal command is part of - - the update process, but during the initial installation, the DEB2XBPS file is not yet present in the `/usr/bin/` directory. Therefore, you can safely ignore -- this error as it will not affect the installation of DEB2XBPS. The script will proceed to copy the DEB2XBPS file to the `/usr/bin/` directory and set the ----- correct permissions.

# 3. Execute the DEB2XBPS script

- mkdir `example`

- Download the .deb package you want to install and place it inside the directory 

- sudo deb2xbps -Syu `example.deb` 

- Use the following command to install: `sudo xbps-install -R binpkgs exemple`

- For remove: `sudo xbps-remove -R exemple`

- This will launch the DEB2XBPS tool, allowing you to convert .deb packages to .xbps format

# For uninstall

- chmod a+x `uninstall.sh`

- sudo `/uninstall.sh`

# Help 
# -y                          Automatic dependencies
# -S                          Sync dependency file
# -q                          Don't build the package at all
# -C                          Clean all files
# -b                          No extract, just build files in destdir
# -u                          Remove empty directories
# -i                          Ignore file conflicts
# -f                          Attempt to automatically fix common conflicts
# --deps=...                  Add manual dependencies
# --arch=...                  Add an architecture for the package to run on
# --rev=...                   Set package revision. Alternative to -y
# --help                      Show this help page

# Other Projects

- way-display-guard is a tool that can resolve a display:0 issue when attempting to run a program as a superuser or using "sudo." Remember to execute the way-display-guard every time you shut down or restart your PC. You can find the source code and more information about way-display-guard in the following repository: https://github.com/manoel-linux/way-display-guard

- opti-sway-i3wm is a tool to optimize the boot process of Sway/i3-wm and make the PC boot faster. You can find the source code and more information about opti-sway-i3wm in the following repository: https://github.com/manoel-linux/opti-sway-i3wm

- The script-xanmod-installer-unofficial simplifies Xanmod kernel installation on Linux systems. It's not officially maintained by the Xanmod project, but provides a convenient option for users to experience Xanmod's features on their preferred distributions. Please note that it comes with no responsibility or warranty from the Xanmod project. You can find the source code and more information about install-uefi-in-qemu in the following repository: https://github.com/manoel-linux/script-xanmod-installer-unofficial

- opti-gnome-wayland is a powerful program aimed at optimizing the GNOME boot process and reducing memory usage, resulting in a lighter and more efficient GNOME  desktop environment. With this tool, you can enjoy a faster and more responsive experience when using GNOME, even on systems with limited resources. You can find the source code and more information about opti-gnome-wayland in the following repository: https://github.com/manoel-linux/opti-gnome-wayland

- The install-uefi-in-qemu script is a tool for installing QEMU UEFI when the UEFI BIOS is not included or available in the distribution's repository. You can find the source code and more information about install-uefi-in-qemu in the following repository: https://github.com/manoel-linux/install-uefi-in-qemu

- CPU-T A command-line tool that I developed from scratch. CPU-T provides detailed information about the CPU of your system, including CPU model, number of cores and threads, CPU frequency, supported instructions, memory information, disk information, network information, and more. It is a useful tool for system analysis and optimization. You can find the source code and more information about CPU-T in the following repository: https://github.com/manoel-linux/cpu-t

# Project Status

- The DEB2XBPS project is currently in development. The latest stable version is 0.4.9. We aim to provide regular updates and add more features in the future.

# License

- DEB2XBPS is licensed under the MIT License. See the LICENSE file for more information.

# Acknowledgements

- We would like to thank the open-source community for their support and the libraries used in the development of DEB2XBPS.
