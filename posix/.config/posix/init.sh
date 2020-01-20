# Add all directories in $HOME/.local/bin/ to PATH
PATH="${PATH}$(find ~/.local/scripts/ -name '.*' -prune -o -type d -printf ':%p')"

# Sets environmental variables for both gui and cli sessions.
export XDG_CONFIG_HOME="$HOME/.config"

export TERMINAL="konsole"
export BROWSER="firefox"
export EDITOR="nvim"
export IDE="codium"

# Sets dir_colors from termite dotfiles folder
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# Source tmux
#tmux source $HOME/.config/tmux/tmux.conf

# Prints TODO banner
$HOME/.local/scripts/BANNER.sh


