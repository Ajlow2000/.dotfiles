if [ -f $HOME/.config/bash/shortcuts.bash ]; then
    source $HOME/.config/bash/shortcuts.bash
fi

# Add all directories in $HOME/.local/bin/ to PATH
for d in $HOME/.local/bin/*; do
	PATH+=":$d"
done
