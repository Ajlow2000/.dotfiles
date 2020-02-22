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
# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
# zstyle ':vcs_info:*' enable git



# ----- Prompt ----- #
autoload -U colors && colors

    # Left Prompt
PROMPT="%{$fg[green]%}[%{$fg[blue]%}%n@%{$fg[blue]%}%m %{$fg[green]%}%~] %{$reset_color%}"

    # Right Prompt
#RPROMPT=

# ----- Source shortcuts ----- #
for f in ~/.config/posix/*; do
    source $f
done

source /home/ajlow/.config/broot/launcher/bash/br

    # ZSH Syntax - Depends on .config/zsh/zsh-syntax-highlighting
source /home/ajlow/.dotfiles/zsh/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

