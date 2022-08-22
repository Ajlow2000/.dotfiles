#!/bin/bash

# This script wipes the pre-existing dotfilesand re stows the latest directory from github

githubLink=https://github.com/Ajlow2000/.dotfiles.git

# Wipe and reclone
rm -rf $HOME/.dotfiles
rm $HOME/.bashrc
rm $HOME/.bash_logout
cd $HOME
git clone $githubLink
cd .dotfiles

# Stow new dotfiles
for d in $HOME/.dotfiles/*; do
    if [ $d == "$HOME/.dotfiles/README.md" ]; then
        continue
    else
        d=${d/"$HOME/.dotfiles/"/""}
        echo "Stowed: $d"
        stow $d
    fi
done

