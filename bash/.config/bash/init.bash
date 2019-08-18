# Add all directories in $HOME/.local/bin/ to PATH
PATH="${PATH}$(find ~/.local/bin/ -name '.*' -prune -o -type d -printf ':%p')"

# print todo.sh upon launch
$HOME/.local/bin/TODO.sh
