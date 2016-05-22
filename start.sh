#!/bin/bash
/usr/sbin/atd
echo "/usr/bin/transmission-remote --blocklist-update" | at now + 1 minute
/usr/bin/transmission-daemon -f --log-error -g /var/lib/transmission/.config/transmission