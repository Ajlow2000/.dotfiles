#!/bin/sh

# Auto Deploy script for my default work enviroment on a minimal arch install
# Must be run from $HOME/.dotfiles/

# ----- Prep ----- #
sudo pacman -Syu --noconfirm

    # Clean BACKUPS dir
#rm -rf BACKUPS/*; echo "Cleaned $HOME/.dotfiles/BACKUPS/"

# TODO - Save preexisting files to BACKUPS


# ----- Dependancies ----- #

    # GNU Stow
sudo pacman -S stow --noconfirm

    # Build from source
sudo pacman -S automake --noconfirm

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

sudo pacman -S bspwm  --noconfirm                # Window Manager
sudo pacman -S sxhkd  --noconfirm                # Keybinds
sudo pacman -S dunst  --noconfirm                # Notification Server
sudo pacman -S picom --noconfirm                 # Compositor
sudo pacman -S rofi  --noconfirm                 # Application Launcher
sudo pacman -S zsh   --noconfirm                 # Preferred Shell
sudo pacman -S bash  --noconfirm                 # Included for Compatibility
sudo pacman -S neovim  --noconfirm               # CLI Editor
sudo pacman -S termite  --noconfirm              # Terminal
sudo pacman -S nautilus  --noconfirm             # Graphical File Manager
sudo pacman -S ranger --noconfirm
sudo pacman -S alsa-utils   --noconfirm          # almixer
sudo pacman -S lxappearance   --noconfirm        # Manually set GTK+
sudo pacman -S broot  --noconfirm                # Dir Structure Visualizer iwth fuzzy finding
sudo pacman -S blueman --noconfirm               # Bluetooth
sudo pacman -S code --noconfirm                  # IDE
sudo pacman -S evince --noconfirm                # pdf Viewer
sudo pacman -S texlive-latexextra --noconfirm
sudo pacman -S tree --noconfirm
sudo pacman -S unclutter --noconfirm             # Lulz for mouser

yay -S spotify --noconfirm
yay -S spicetify-cli --noconfirm
yay -S polybar --noconfirm
yay -S zplug --noconfirm

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

    # User Prefs
sudo usermod -s /bin/zsh $USER		        # Switch shell
sudo usermod -aG video,lp,wheel $USER		# To control backlight

    # Bluetooth
sudo pacman -S bluez bluez-utils --noconfirm
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

echo "Please restart your Xsession to implement changes"
