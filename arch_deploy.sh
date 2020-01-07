#!/bin/sh

# Auto Deploy script for my default work enviroment on a minimal arch install
# Must be run from $HOME/.dotfiles/

# ----- Prep ----- #
sudo pacman -Syu

    # Clean BACKUPS dir
#rm -rf BACKUPS/*; echo "Cleaned $HOME/.dotfiles/BACKUPS/"

# TODO - Save preexisting files to BACKUPS


# ----- Dependancies ----- #

    # GNU Stow
sudo pacman -S stow

    # yay
echo "Installing yay -- aur builder"
sudo pacmam -S binutils make gcc pkg-config fakeroot
mkdir -p $HOME/.local/bin/
git clone https://aur.archlinux.org/yay.git $HOME/.local/bin/
cd yay
makepkg -si
cd ../


# ----- Basic Worklow Applications ----- #

echo "Install basic workflow apps"

sudo pacman -S bspwm
sudo pacman -S sxhkd
sudo pacman -S dunst
sudo pacman -S picom
sudo pacman -S rofi
sudo pacman -S zsh
sudo pacman -S bash
sudo pacman -S neovim
sudo pacman -S termite
sudo pacman -S xorg-xbacklight
sudo pacman -S nautilus
sudo pacman -S alsa-utils
sudo pacman -S lxappearance
sudo pacman -S tree

yay -S polybar
yay -S vscodium-bin
yay -S zplug

# ----- Deploy Dots ----- #

echo "Deploying dotfiles"

stow bspwm
stow sxhkd
stow dunst
stow picom
stow rofi
stow zsh
stow bash
stow posix
stow nvim
stow termite
stow polybar

# ----- Config Changes ----- #

source $HOME/.zshrc
source $HOME/.bashrc

config_git.sh; echo "Git configured for Ajlow"
install_vim-plug.sh; echo "Installed Vim-plug"

sudo usermod -s /bin/zsh $USER

echo "Please restart your Xsession to implement changes"
