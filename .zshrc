# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
unsetopt beep
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ajlow/.zshrc'

# End of lines added by compinstall

# ----- Basic auto/tab complete ----- #
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# ----- VI mode ----- #
bindkey -v
export KEYTIMEOUT=1

    # Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

    # Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# ----- Git Integration ---- #
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git


# ----- Source Extensions----- #
ZSH_CONFIG_HOME=$HOME"/.config/zsh"

    # ZSH Syntax - Depends on .config/zsh/zsh-syntax-highlighting
source $ZSH_CONFIG_HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

    # Colored man pages - https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/colored-man-pages/colored-man-pages.plugin.zsh
source $ZSH_CONFIG_HOME/colored-man-pages.zsh

    # Custom History behavior
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
#setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
#setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

    # Colored cat and less
source $ZSH_CONFIG_HOME/colorize-prev.zsh

    # Git prompt - https://github.com/olivierverdier/zsh-git-prompt
source $ZSH_CONFIG_HOME/zsh-git-prompt/zshrc.sh
export GIT_PROMPT_EXECUTABLE="haskell"

# ----- Prompt ----- #
autoload -U colors && colors

    # Print a newline before prompt
precmd() {
    precmd() {
        echo
    }
}

    # Left Prompt
PROMPT="%{$fg[green]%}[%{$fg[blue]%}%n@%{$fg[blue]%}%m %{$fg[green]%}%~] %{$reset_color%}"

    # Right Prompt
RPROMPT='%? $(git_super_status)'
# ------------------ #


eval "$(zoxide init zsh)"

source ~/.profile
