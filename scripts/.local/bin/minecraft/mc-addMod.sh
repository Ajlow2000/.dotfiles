#!/bin/bash

if [ -f $1 ]; then
    if [ -d $HOME/.minecraft ]; then
        if [ -d $HOME/.minecraft/mods ]; then
            cp $1 $HOME/.minecraft/mods
            chmod +x $HOME/.minecraft/mods/*
            exit 0
        else
            echo "Failed to locate $HOME/.minecraft/mods"
        fi
    else
        echo "Failed to locate $HOME/.minecraft"
    fi
else
    echo "Failed to locate $1 - Not a file"
fi
