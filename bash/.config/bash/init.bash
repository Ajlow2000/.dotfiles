# Add all directories in $HOME/.local/bin/ to PATH
PATH+=":$HOME/.local/bin/"
for d in $HOME/.local/bin/*; do
	PATH+=":$d"
done

# print TODO.sh upon launch
$HOME/.local/bin/TODO.sh
