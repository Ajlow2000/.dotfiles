# Script: battery-combined-udev

A shell script that shows the battery status. This is an extended version of [battery-combined-shell](../battery-combined-shell).

It supports two rechargeable batteries and changing icons. It works even if only one battery is used.

This script is able to display power supply changes in real time. For this udev is being used.


## Configuration

Copy `95-battery.rules` to `/etc/udev/rules.d/95-battery.rules`. Make sure that the paths in the file have been modified properly.


## Module

```ini
[module/battery-combined-udev]
type = custom/script
exec = ~/polybar-scripts/battery-combined-udev.sh
tail = true
```

## File to copy for 95-battery.rules

``SUBSYSTEM=="power_supply", ENV{POWER_SUPPLY_ONLINE}=="0", \
    RUN+="/home/user/.config/polybar/battery-combined-udev.sh --update"
SUBSYSTEM=="power_supply", ENV{POWER_SUPPLY_ONLINE}=="1", \
    RUN+="/home/user/.config/polybar/battery-combined-udev.sh --update"
