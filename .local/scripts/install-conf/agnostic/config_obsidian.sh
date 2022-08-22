#!/bin/sh

(crontab -l 2>/dev/null; echo "*/5 * * * * /home/ajlow/.local/scripts/utilities/sync_media_vault") | crontab -

