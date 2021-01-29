# Custom Commands
alias vi=vim
alias pulseaudio-start="pulseaudio --exit-idle-time=-1 --daemonize -vv" 
alias wget="wget --hsts-file ~/.config/wget/wget-hsts"
alias cleart="clear && pfetch"
alias workspace='vim +split +"wincmd j" +term +"wincmd j" +q +"resize -15" +NERDTreeToggle' # Vim IDE thingy

# Git aliases
alias gc="git commit"
alias gs="git status"
alias gl="git log" alias ga="git add"
alias gr="git rm"
alias gp="git push"

# Dot aliases
alias dots="git --git-dir=$HOME/.dots --work-tree=$HOME"
alias ds="dots status -uno"
alias dl="dots log"
alias dc="dots commit"
alias da="dots add"
alias dr="dots rm"
alias dp="dots push"

# Colors
alias ls="ls -oH --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias diff="diff --color=auto"

# Custom Bookmarks
alias repos="cd ~/repos"

# Always Options
alias l="ls -A"
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

scriptd() {
    cd $HOME/.local/bin
}

# Exports
export PATH=$PATH:~/.local/bin:~/.local/share/xroot-status

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
export zsh_CONFIG="$HOME/.config/zsh/.zshrc"
export vim_CONFIG="$HOME/.config/vim/vimrc"
export dwm_CONFIG="$HOME/.config/dwm/config.h"
export dmenu_CONFIG="$HOME/.config/dmenu/config.h"
export st_CONFIG="$HOME/.config/st/config.h"
export ssh_CONFIG="$HOME/.config/ssh/config"
export xinit_CONFIG="$HOME/.config/X11/xinitrc"
export xresources_CONFIG="~/.config/X11/Xresources"

# Moving dot dirs to .config
export VIMINIT="source ~/.config/vim/vimrc"
export GNUPGHOME="~/.config/gnupg"
export __GL_SHADER_DISK_CACHE_PATH="~/.config/nvidia"
#export XAUTHORITY="~/.config/X11/Xauthority"
export CARGO_HOME="~/.local/share/cargo"
export NVM_DIR="~/.config/nvm"
alias ssh="ssh -F ~/.config/ssh/config"

# Random program settings
export _JAVA_AWT_WM_NONREPARENTING=1    # Fix for Java applications in dwm

# Plugins
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
#source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

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

# Blank line after output
precmd() {
    _fix_cursor
    precmd() {
        print -P "$(date +%H:%M) %F{27}%B</>%b%F{15}"
    }
}

_fix_cursor() {
       echo -ne '\e[5 q'
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
