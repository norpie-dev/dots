# Aliases
alias vi=vim
alias pulseaudio-start="pulseaudio --exit-idle-time=-1 --daemonize -vv" alias wget="wget --hsts-file ~/.config/wget/wget-hsts"
alias cleart="clear && pfetch"
alias dots="git --git-dir=$HOME/repos/dots --work-tree=$HOME"

# Colors
alias ls="ls -oH --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias diff="diff --color=auto"

# Custom Bookmarks
alias repos="cd ~/repos"

# Always Options
alias l="ls -a"
alias la="ls -a"
alias shutdown="sudo shutdown -h now"
alias plex="sudo plex"

alias mv="mv -v"
alias cp="cp -v"

# Functions
configd() {
    [[ $# == 0 ]] && cd ~/.config && return
    CONFIG_PATH=$1_CONFIG
    CONFIG_DIR=$(dirname ${(P)CONFIG_PATH})
    cd $CONFIG_DIR
}

# Exports
export PATH=$PATH:$HOME/.local/bin:$HOME/.local/share/xroot-status

#XDG
export XDG_DATA_HOME=~/.local/share

# Prompt
export NEWLINE=$'\n'
export PROMPT="%F{27}%B%n%b %F{15}on %F{27}%B%m%b %F{15}in %F{27}%B%~%b ${NEWLINE}%F{15}%T %F{27}%B<>%b %F{15}"

# Locale
export LC_ALL="en_NZ.UTF-8"
export LANG="en_NZ.UTF-8"

# Default apps
export TERMINAL="st"
export BROWSER="chromium"
export PDF_READER="zathura"
export EDITOR="vim"
export VISUAL="vim"

# Config paths
export zsh_CONFIG="/home/konsta/.config/zsh/.zshrc"
export vim_CONFIG="/home/konsta/.config/vim/vimrc"
export dwm_CONFIG="/home/konsta/.config/dwm/config.h"
export dmenu_CONFIG="/home/konsta/.config/suckless/dmenu/config.h"
export st_CONFIG="/home/konsta/.config/st/config.h"
export ssh_CONFIG="/home/konsta/.config/ssh/config"
export xinit_CONFIG="/home/konsta/.config/X11/xinitrc"
export xresources_CONFIG="/home/konsta/.config/X11/Xresources"

# Moving dot dirs to .config
export VIMINIT="source ~/.config/vim/vimrc"
export GNUPGHOME="~/.config/gnupg"
export __GL_SHADER_DISK_CACHE_PATH="~/.config/nvidia"
#export XAUTHORITY="~/.config/X11/Xauthority"
export CARGO_HOME="~/.local/share/cargo"
alias ssh="ssh -F ~/.config/ssh/config"

# Plugins
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Plugin settings
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# History file
export HISTFILE='~/.config/zsh/histfile'
export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTCONTROL=ignoreboth:erasedumps

# Vim
# Enable it
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
zstyle ':completion:*' menu select
zmodload zsh/complist

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Change cursor when vi
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init

_fix_cursor() {
       echo -ne '\e[5 q'
}

precmd_functions+=(_fix_cursor)

# Blank line after output
precmd() {
    precmd() {
        print -P "$(date +%H:%M) %F{27}%B</>%b%F{15}"
    }
}

# Auto-complete
autoload -U compinit
setopt autocd
setopt histignoredups
setopt inc_append_history share_history
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# fast-syntax-highlighting theme
fast-theme zdharma

# start commmands
cleart
