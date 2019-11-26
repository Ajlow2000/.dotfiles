# Add all directories in $HOME/.local/bin/ to PATH
PATH="${PATH}$(find ~/.local/bin/ -name '.*' -prune -o -type d -printf ':%p')"

# print todo.sh upon launch
$HOME/.local/bin/TODO.sh

# Enable dircolors for dracula theme
# https://github.com/dracula/gnome-terminal
eval `dircolors $HOME/.local/bin/gnome-terminal-colors-dracula/dircolors`
