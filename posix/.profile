
# ----- Runtime Env ----- #

    # Default apps
export BROWSER="/usr/bin/brave"
export TERMINAL="/usr/bin/termite"
export EDITOR="/usr/bin/nvim"
export GEDITOR="/usr/bin/code"
export FILE_EXPLORER="/usr/bin/nautilus"


    # Handy Locations
export WALLPAPER="$HOME/.config/wallpaper"

    # Terminal Banner
export BANNER="$HOME/.local/scripts/BANNER"

    # Add all directories in $HOME/.local/bin/ to PATH
PATH="${PATH}$(find ~/.local/scripts/ -name '.*' -prune -o -type d -printf ':%p')"

export XDG_CONFIG_HOME="$HOME/.config"


# Created by `userpath` on 2020-11-21 17:45:42
export PATH="$PATH:/home/wsl/.local/bin"
