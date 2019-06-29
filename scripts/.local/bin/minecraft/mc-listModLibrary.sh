#!/bin/bash

# This script lists all downloaded Minecraft Mods that are downloaded on this folder

if [ -d $HOME/Downloads/Minecraft/mods ]; then
    echo "########## Mod Library ##########"
    ls $HOME/Downloads/Minecraft/mods
    echo "#################################"
else
    echo "Failed to locate directory - $HOME/Downloads/Minecraft/mods"
fi
