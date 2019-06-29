#!/bin/bash

# This script lists all the installed, in use mods

if [ -d $HOME/.minecraft/mods ]; then
    echo "########## Installed Mods ##########"
    ls $HOME/.minecraft/mods
    echo "####################################"
else
    echo "Failed to locate directory - $HOME/.minecraft/mods"
fi
