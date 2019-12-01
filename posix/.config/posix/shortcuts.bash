alias ls="ls --group-directories-first --color"

function cs() {
    cd $1
    ls
}

alias pls="sudo !!"

alias grep='grep --color=auto'

# Source rc file regardless of shell
#alias sourcesh='source .($SHELL)rc' # TODO
