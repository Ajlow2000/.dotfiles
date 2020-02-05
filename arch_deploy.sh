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

sudo pacman -S bspwm                # Window Manager
sudo pacman -S sxhkd                # Keybinds
sudo pacman -S dunst                # Notification Server
sudo pacman -S picom                # Compositor
sudo pacman -S rofi                 # Application Launcher
sudo pacman -S zsh                  # Preferred Shell
sudo pacman -S bash                 # Included for Compatibility
sudo pacman -S neovim               # CLI Editor
sudo pacman -S termite              # Terminal
sudo pacman -S nautilus             # Graphical File Manager
sudo pacman -S ranger
sudo pacman -S alsa-utils           # almixer
sudo pacman -S lxappearance         # Manually set GTK+
sudo pacman -S broot                # Dir Structure Visualizer iwth fuzzy finding
sudo pacman -S blueman              # Bluetooth
sudo pacman -S code                 # IDE
sudo pacman -S evince               # pdf Viewer
sudo pacman -S pdflatex

yay -S polybar
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

    # Update Shells
source $HOME/.zshrc
source $HOME/.bashrc

    # General Configs
config_git.sh; echo "Git configured for Ajlow"
install_vim-plug.sh; echo "Installed Vim-plug"

sudo usermod -s /bin/zsh $USER      # Switch shell
sudo usermod -aG video $USER        # To control backlight

echo "Please restart your Xsession to implement changes"
