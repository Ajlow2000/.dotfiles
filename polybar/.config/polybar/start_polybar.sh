#!/bin/sh

# This script starts polybar

# Terminate already running instances
killall -q polybar

# Wait until processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload bspwm -r &
    MONITOR=$m polybar --reload datetime -r &
    MONITOR=$m polybar --reload sysinfo -r &
done
