#!/bin/bash

# This script sets my settings on a new machine


git config --global user.email ajlow2000@gmail.com
git config --global user.name Ajlow2000
git config --global alias.plog "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global pull.rebase false
