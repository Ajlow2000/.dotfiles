# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ajlow/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# ----- Git Integration ---- #
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# ----- Source Extensions----- #
ZSH_CONFIG_HOME=$HOME"/.config/zsh"

    # Custom Shortcuts
for f in ~/.config/posix/*; do
    source $f
done

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ajlow/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ajlow/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ajlow/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ajlow/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

