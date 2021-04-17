export ZDOTDIR="/home/konsta/.config/zsh"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
    exec startx
fi
