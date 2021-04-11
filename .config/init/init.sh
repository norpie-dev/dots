#!/bin/zsh

source ~/.config/zsh/.zshrc

ssh-add-defaults
start-ckb-next-daemon
xroot-status-restart
plex
pulseaudio-start
xwallpaper --zoom ~/.config/wallpaper/wallpaper.png
escapecaps