#!/bin/bash

# ----------------------------------------------------------------------------------
# This script documents the guide I followed to to install and configure lutris.
# https://linuxconfig.org/how-to-install-lutris-on-debian-10-buster
# ----------------------------------------------------------------------------------

# Installing Wine Staging
# https://linuxconfig.org/how-to-install-wine-staging-on-debian-10-buster

sudo dpkg --add-architechture i386 # Enable 32bit support
sudo apt update # blah blah blah

wget -nc https://dl.winehq.org/wine-builds/winehq.key # Downloading GPG Key
sudo apt-key add winehq.key # import key with apt

sudo touch /etc/apt/sources.list.d/wine.list # Create wine.list


# TODO - figure out how to programmatically do this.
#echo "deb https://dl.winehq.org/wine-builds/debian/ buster main" >> /etc/apt/sources.list.d/wine.list
sudo apt update

sudo apt install --install-recommends winehq-staging # Install Wine Staging
