# print TODO.sh upon launch
TODO.sh

# Add all directories in $HOME/.local/bin/ to PATH
for d in $HOME/.local/bin/*; do
	PATH+=":$d"
done
