#!/bin/zsh

source ~/.config/zsh/.zshrc

ssh-add-defaults
start-ckb-next-daemon
xroot-status-stop
xroot-status-start
sudo plex
pulseaudio -D --exit-idle-time=-1
wallpaper scenery4
escapecaps
