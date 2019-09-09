#!/bin/bash

# This script installs VS Codium, the FOSS variant of VS Code.  Only works on DEB

# Deps
sudo apt install wget

# Add the duuds key
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key add -

# Add the repo
echo 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list

# Update then install vscodium
sudo apt update
sudo apt install codium
