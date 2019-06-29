alias ls="ls --group-directories-first --color"

function cs() {
    cd $1
    ls
}

