# Add all directories in $HOME/.local/bin/ to PATH
PATH="${PATH}$(find ~/.local/scripts/ -name '.*' -prune -o -type d -printf ':%p')"

# Sets environmental variables for both gui and cli sessions.

export XDG_CONFIG_HOME="$HOME/.config"

export TERMINAL="konsole"
export BROWSER="firefox"
export EDITOR="nvim"
export IDE="codium"

# Prints TODO banner
$HOME/.local/scripts/BANNER.sh


