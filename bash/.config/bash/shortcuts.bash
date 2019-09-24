alias ls="ls --group-directories-first --color"

function cs() {
    cd $1
    ls
}

alias pls="sudo !!"

alias powershell="pwsh"

alias grep='grep --color=auto'

alias rsync='rsync --info=progress2'
