#!/bin/bash
#'TR_TORRENT_NAME'
#'TR_TORRENT_DIR'
#'TR_TORRENT_ID'
#'TR_APP_VERSION'
#'TR_TORRENT_HASH'
#'TR_TIME_LOCALTIME'
echo "/usr/bin/transmission-remote -t $TR_TORRENT_ID -r" > /tmp/tr_command
/usr/bin/at now + 1 minutes -f /tmp/tr_command