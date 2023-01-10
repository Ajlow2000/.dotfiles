#!/bin/bash

# This script is designed to automate the deployment of my nvim dotfiles.
# It assumes $HOME/.dotfiles already exists
#
# @AUTHOR Alec Lowry

cd $HOME/.dotfiles/

rm $HOME/.bashrc
rm $HOME/.bash_logout

stow nvim/

cd
