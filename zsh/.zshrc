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

    # Colored cat and less
#source $ZSH_CONFIG_HOME/colorize-prev.zsh

    # Git prompt - https://github.com/olivierverdier/zsh-git-prompt
source $ZSH_CONFIG_HOME/zsh-git-prompt/zshrc.sh
export GIT_PROMPT_EXECUTABLE="haskell"

# ----- Prompt ----- #
autoload -U colors && colors

    # Left Prompt
PROMPT="%{$fg[green]%}[%{$fg[blue]%}%n@%{$fg[blue]%}%m %{$fg[green]%}%~] %{$reset_color%}"

    # Right Prompt
RPROMPT='%? $(git_super_status)'
