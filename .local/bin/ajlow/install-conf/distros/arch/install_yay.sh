#!/bin/bash

# Install yay helper

# Dep
sudo pacman -S binutils make gcc pkg-config fakeroot

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
