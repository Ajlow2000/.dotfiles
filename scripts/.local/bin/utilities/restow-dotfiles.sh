#!/bin/bash

# This script wipes the pre-existing dotfilesand re stows the latest directory from github

githubLink=https://github.com/Ajlow2000/.dotfiles.git

# Wipe and reclone
rm -rf $HOME/.dotfiles
cd $HOME
git clone $githubLink

# Stow new dotfiles
for d in $HOME/.dotfiles/*; do
    if [ $d == "README.md" ]; then
        continue
    else
        d=${d/%?/}
        echo $d
        stow $d
    fi
done

