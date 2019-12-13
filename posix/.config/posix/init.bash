# Add all directories in $HOME/.local/bin/ to PATH
PATH="${PATH}$(find ~/.local/scripts/ -name '.*' -prune -o -type d -printf ':%p')"
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

# print todo.sh upon launch
$HOME/.local/scripts/BANNER.sh

