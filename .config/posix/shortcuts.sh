# Shortcut to edit BANNER.sh
alias b="nvim $HOME/.local/scripts/BANNER.sh"

    # Git Shortcuts
alias gs="git status"
alias gcm="git commit -m"
alias ga="git add"

# Some gerneral settings
alias ls="ls --group-directories-first --color"
alias grep='grep --color=auto'

# MD preview in less
function mdless() {
    glow "$@" -s dark | less -r
}

function cs() {
    cd $1
    if [ -d ./.git/ ]; then
        git fetch
        git status
        echo ""
    fi
    ls
}


# SSH aliases
alias csl="ssh lowry@best-linux.cs.wisc.edu"
alias wopr="ssh server@wopr"
alias pc="ssh ajlow@24.240.36.75"

    # Edit BANNER
alias banner="$EDITOR $BANNER"

# Source rc file regardless of shell
#alias sourcesh='source .($SHELL)rc' # FIXME
