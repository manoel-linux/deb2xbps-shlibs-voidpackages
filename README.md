# DEB2XBPS                                                                                                                                                     

- deb2xbps-version: june 2023

- build-latest: 0.3.8

- The support for 32-bit .deb packages has been discontinued.
- If you try to install the discontinued 32-bit .deb package, it will not install.
- The support for 32-bit in deb2xbps has also been discontinued

- It is recommended to create a separate directory for installing .deb packages using DEB2XBPS. If you do not create a dedicated directory, deb2xbps may - ---- create files and folders in your current working directory, which can make it difficult to manage and remove them later on.

- When using DEB2XBPS, it may create a "shlibs" directory that contains the necessary libraries (shlibs) required for installing the .deb packages. If you ---- accidentally create this directory, you can delete it without causing any harm to your system or the functionality of DEB2XBPS.

- DEB2XBPS is an open-source project, and we are happy to share it with the community. You have complete freedom to do whatever you want with DEB2XBPS, in accordance with the terms of the MIT license. You can modify, distribute, use it in your own projects, or even create a fork of DEB2XBPS to add additional features.

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

- CPU-T: version for void A command-line tool that I developed from scratch. CPU-T provides detailed information about the CPU of your system, including CPU model, number of cores - and threads, CPU frequency, supported instructions, memory information, disk information, network information, and more. It is a useful tool for system analysis - and optimization. You can find the source code and more information about CPU-T in the following repository: https://github.com/manoel-linux/cpu-t-void-linux.

- CPU-T version for ubuntu/debian: https://github.com/manoel-linux/cpu-t-ubuntu-debian.

- CPU-T version for Arch/Artix: https://github.com/manoel-linux/cpu-t-arch-artix.

# Project Status

- The DEB2XBPS project is currently in development. The latest stable version is 0.3.8. We aim to provide regular updates and add more features in the future.

# License

- DEB2XBPS is licensed under the MIT License. See the LICENSE file for more information.

# Acknowledgements

- We would like to thank the open-source community for their support and the libraries used in the development of DEB2XBPS.
