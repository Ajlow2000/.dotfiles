# Sets dir_colors from termite dotfiles folder
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

source $HOME/.profile

# Prints TODO banner
cat $BANNER

