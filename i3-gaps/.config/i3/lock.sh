#!/bin/sh

set -e
xset s off dpms 0 10 0
i3lock-fancy-rapid 5 3 --ignore-empty-password --show-failed-attempts
xset s off -dpms
