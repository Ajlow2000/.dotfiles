#!/bin/bash

# This script backups up the users $HOME directory to WOPR. 
# Requires being on the same networking probably.

hostHOME=$HOME
hostUSER=$USER

# Check if a backup folder has been created
ssh server@wopr
if [ ! -d /home/server/backups/$hostUSER ]; then
    mkdir -p /home/server/backups/$hostUSER
fi

# Check if backup log exists.
backupLog=/home/server/backups/backups.log
if [ ! -f $backupLog]; then
    touch $backupLog
fi

# Update log
date >> $backupLog
echo "Updated $hostUser backup of home directory" >> $backupLog

exit

##### Back to host machine

scp -r $HOME/ server@wopr:/home/server/backups/$hostUSER
