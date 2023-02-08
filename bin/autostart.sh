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

#Network manager
nm-applet --no-agent &

# Apps
syncthing --no-browser &
telegram-desktop -startintray &
discord --start-minimized &
#slack -u &
$HOME/.dropbox-dist/dropboxd start &
