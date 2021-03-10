#!/bin/zsh

source ~/.config/zsh/.zshrc

ssh-add-defaults
start-ckb-next-daemon
xroot-status-start
sudo rm "/root/Library/Application Support/Plex Media Server/plexmediaserver.pid" & sudo plex
pulseaudio -D --exit-idle-time=-1
xwallpaper --zoom ~/.config/wallpaper/wallpaper.png
