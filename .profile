# ----- Runtime Env ----- #
TERM=xterm-256color
FCEDIT=nvim

# ----- WSL Disable highlighting directories ----- #
export LS_COLORS=$LS_COLORS:'ow=1;34:';

# ----- Kitty Term ----- #
alias icat="kitty +kitten icat"

    # Terminal Banner
export BANNER="$HOME/.local/cache/BANNER"

# ----- Aliases ----- #
alias p="tmux-session-wizard"
alias e=$(which nvim)

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
    z $1
    if [ -d ./.git/ ]; then
        git fetch
        git status
        echo ""
    fi
    ls
}

    # Edit BANNER
alias banner="e ~/.local/cache/BANNER"


    # Add all directories in $HOME/.local/bin/ to PATH
PATH="${PATH}$(find ~/.local/bin/ -name '.*' -prune -o -type d -printf ':%p')"

export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin/
. "$HOME/.cargo/env"


# Prints banner at new new session
cat $BANNER
