#!/bin/bash

# This script exports the display for XLaunch to run guis on WSL

echo "export DISPLAY=:0" >> $HOME/.bashrc

echo "export LIBGL_ALWAYS_INDIRECT=1" >> $HOME/.bashrc

source $HOME/.bashrc
