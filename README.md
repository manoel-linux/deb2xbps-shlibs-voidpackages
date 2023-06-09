# DEB2XBPS                                                                                                                                                     

- deb2xbps-version: june 2023

- build: 0.2.3

- It is recommended to create a separate directory for installing .deb packages using deb2xbps. If you do not create a dedicated directory, deb2xbps may - ---- create files and folders in your current working directory, which can make it difficult to manage and remove them later on.

- When using deb2xbps, it may create a "shlibs" directory that contains the necessary libraries (shlibs) required for installing the .deb packages. If you ---- accidentally create this directory, you can delete it without causing any harm to your system or the functionality of deb2xbps.

- The deb2xbps is an open-source project, and we are happy to share it with the community. You have complete freedom to do whatever you want with deb2xbps, in - accordance with the terms of the MIT license. You can modify, distribute, use it in your own projects, or even create a fork of deb2xbps to add additional -- features.

# Based on xdeb

- deb2xbps is based on xdeb, xdeb-github: https://github.com/toluschr/xdeb

## Installation

- To install deb2xbps, follow the steps below:

# 1. Install the necessary dependencies by running the following command

- sudo xbps-install -S unzip binutils tar curl xbps xz

# 2. Clone this repository by running the following command

- git clone https://github.com/manoel-linux/deb2xbps-shlibs-voidpackages.git

# 3. To install the deb2xbps script, follow these steps

- chmod a+x installupdate.sh

- sudo ./installupdate.sh

- When installing deb2xbps for the first time, you may encounter an error "rm /usr/bin/deb2xbps" if the file doesn't exist. This removal command is part of - - the update process, but during the initial installation, the deb2xbps file is not yet present in the /usr/bin/ directory. Therefore, you can safely ignore -- this error as it will not affect the installation of deb2xbps. The script will proceed to copy the deb2xbps file to the /usr/bin/ directory and set the ----- correct permissions.

# 4. Execute the deb2xbps script

- mkdir example

- Download the .deb package you want to install and place it inside the directory 

- sudo deb2xbps -Syu example.deb 

- DONE! Use for install command `sudo xbps-install -R binpkgs exemple

- This will launch the deb2xbps tool, allowing you to convert .deb packages to .xbps format

# For uninstall

- chmod a+x uninstall.sh

- sudo ./uninstall.sh

# Help 
# -y                          Automatic dependencies
# -S                          Sync dependency file
# -q                          Don't build the package at all
# -C                          Clean all files
# -b                          No extract, just build files in destdir
# -u                          Remove empty directories
# -32                         Add the 32bit suffix
# -i                          Ignore file conflicts
# -f                          Attempt to automatically fix common conflicts
# --deps=...                  Add manual dependencies
# --arch=...                  Add an architecture for the package to run on
# --rev=...                   Set package revision. Alternative to -y
# --help                      Show this help page
