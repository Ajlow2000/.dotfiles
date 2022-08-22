#!/bin/bash

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# This script installs my preferred software essentials over top of a debian based system
# and then imprts my dotfiles from github and configures them.
# It will only add software, however it will overwrite any configurations you've made to 
# any software you already used and confgured prior to running this script.  
# Make backups of your dotfiles if you are worried about this or just run my script in a vm.  


# Base software package includes:
#  - Neovim
#  - Git
#  - Htop
#  - Stow
#  - Tree
#  - Ranger
#  - Firefox
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Update repos just to make sure we don't download ancient software.
sudo apt update -y

# Install pkgs available through apt
sudo apt install neovim git htop stow tree ranger firefox

# Import dotfiles
cd $HOME
git clone https://github.com/Ajlow2000/.dotfiles.git

# Configure installed software
if [ -d $HOME/.dotfiles/ ]; then
    cd $HOME/.dotfiles
    stow bash
    stow scripts
    stow nvim
fi
