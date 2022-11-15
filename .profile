
# ----- Runtime Env ----- #

    # Default apps
export BROWSER="/usr/bin/google-chrome-stable"
export TERMINAL="/usr/bin/alacritty"
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

