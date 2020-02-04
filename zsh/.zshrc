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
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git


# ----- Zplug ----- #
source /usr/share/zsh/scripts/zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-syntax-highlighting", defer:2

    # Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

    # Uninstall removed plugins
zplug clean

    # Source the plguins and add commands to $PATH
zplug load

# ----- Prompt ----- #

autoload -U colors && colors
PS1="%{$fg[green]%}[%{$fg[blue]%}%n@%{$fg[blue]%}%m %{$fg[green]%}%~] %{$reset_color%}"

#powerline-daemon -q

#. /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh


# ----- Source shortcuts ----- #
for f in ~/.config/posix/*; do
    source $f
done

source /home/ajlow/.config/broot/launcher/bash/br
