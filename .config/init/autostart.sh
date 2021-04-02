#!/bin/zsh

source ~/.config/zsh/.zshrc

ssh-add-defaults
start-ckb-next-daemon
xroot-status-restart
sudo plex
pulseaudio -D --exit-idle-time=-1
xwallpaper --zoom ~/.config/wallpaper/wallpaper.png
escapecaps
