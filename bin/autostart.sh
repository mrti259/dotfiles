#!/bin/sh

# Keyboard - Screens - Wallpaper
reconfigure.sh &

# Composer
xcompmgr &

# Filter
redshift &

# Notifications
dunst &

# Volume icon
volumeicon &

# Apps
syncthing --no-browser &
telegram-desktop -startintray &
discord --start-minimized &
slack -u &
$HOME/.dropbox-dist/dropboxd start &
