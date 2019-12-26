#!/bin/sh

# This script starts polybar

# Terminate already running instances
killall -q polybar

# Wait until processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar dracula -r &
