source $XDG_CONFIG_HOME/posix/vars.sh

# Sets dir_colors from termite dotfiles folder
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# Source tmux
#tmux source $HOME/.config/tmux/tmux.conf

# Prints TODO banner
$HOME/.local/scripts/BANNER.sh


