#!/bin/bash

# This script backups up the users $HOME directory to WOPR. 
# Requires being on the same networking probably.

hostHOME=$HOME
hostUSER=$USER
hostHOSTNAME="$(hostname)"


ssh server@wopr 'bash -s' << EOF

# Check if a backup folder has been created
if [ ! -d /home/server/backups/"$hostUSER@$hostHOSTNAME" ]; then
    mkdir -p /home/server/backups/"$hostUSER@$hostHOSTNAME"
fi

exit

EOF


##### Back to host machine

rsync -av --info=progress2 --exclude=".*" $HOME/* server@wopr:/home/server/backups/"$hostUSER@$hostHOSTNAME"/
rsync -av --info=progress2 $HOME/.dotfiles server@wopr:/home/server/backups/"$hostUSER@$hostHOSTNAME"/
rsync -av --info=progress2 $HOME/.config server@wopr:/home/server/backups/"$hostUSER@$hostHOSTNAME"/
