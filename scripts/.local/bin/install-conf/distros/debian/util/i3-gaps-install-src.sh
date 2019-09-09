#!/bin/bash

# A script to install i3-gaps


# install dependencies
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake libsnack2-dev libxcb-shape0-dev autoconf libev-dev build-essential git

##############
### REBOOT ###
##############

# move to /tmp
cd /tmp

# clone the repo
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile and install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make && sudo make install


