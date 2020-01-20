# Shortcut to edit BANNER.sh
alias b="nvim $HOME/.local/scripts/BANNER.sh"

# Some gerneral settings
alias ls="ls --group-directories-first --color"
alias grep='grep --color=auto'

# MD preview in less
function mdless() {
    glow "$@" -s dark | less -r
}

function cs() {
    cd $1
    ls
}

alias wopr="ssh server@wopr"


# Source rc file regardless of shell
#alias sourcesh='source .($SHELL)rc' # TODO
