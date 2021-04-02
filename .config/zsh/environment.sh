# Custom Commands
alias v=vim
alias vi=vim
alias pulseaudio-start="pulseaudio --exit-idle-time=-1 --daemonize -vv"
alias wget="wget --hsts-file ~/.config/wget/wget-hsts"
alias cleart="clear && neofetch"
alias workspace='vim +split +"wincmd j" +term +"wincmd j" +q +"resize -15" +NERDTreeToggle' # Vim IDE thingy
alias node80="sudo node app.js"
alias shutdown="sudo shutdown -h now"
alias reboot="sudo reboot"
alias plex="sudo plex"
alias update="yay -Syu --noconfirm"

# Git aliases
alias gc="git commit"
alias gs="git status"
alias gl="git log --oneline --decorate --all --graph"
alias ga="git add"
alias gr="git rm"
alias gp="git push"
alias gi="git ignore"

# Dot aliases
alias dots="git --git-dir=$HOME/.dots --work-tree=$HOME"
alias ds="dots status"
alias dl="dots log --oneline --decorate --all --graph"
alias dc="dots commit"
alias da="dots add"
alias dr="dots rm"
alias dp="dots push"
alias di="dots ignore --dots"

# Colors
alias ls="ls -ovH --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias diff="diff --color=auto"

# Always Options
alias l="ls -A"
alias la="ls -a"
alias mkdir="mkdir -p"
alias mv="mv -v"
alias cp="cp -v"

# Exports
export PATH=~/.local/bin:~/.local/bin/xroot-panels:$PATH

#XDG
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share

#Prompt
export NEWLINE=$'\n'
export PROMPT="%F{27}%B%n%b %F{15}on %F{27}%B%m%b %F{15}in %F{27}%B%~%b ${NEWLINE}%F{15}%T %F{27}%B<>%b %F{15}"

# Locale
export LANG="en_NZ.UTF-8"

# Default apps
export TERMINAL="st"
export BROWSER="chromium"
export PDF_READER="zathura"
export EDITOR="vim"
export VISUAL="vim"

# Config paths
export SCRIPT_DIR="$HOME/.local/bin"

# Moving dot dirs to .config
export VIMINIT="source ~/.config/vim/init.vim"
export VIMDOTDIR="source ~/.config/vim"
export VIMDIR="~/.config/vim"
export GNUPGHOME="~/.config/gnupg"
export __GL_SHADER_DISK_CACHE_PATH="~/.config/nvidia"
#export XAUTHORITY="~/.config/X11/Xauthority"
export CARGO_HOME="~/.local/share/cargo"
export NVM_DIR="~/.config/nvm"
alias ssh="ssh -F ~/.config/ssh/config -o UserKnownHostsFile=~/.config/ssh/known_hosts"
export LEIN_HOME="$XDG_DATA_HOME"/lein
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"

export _JAVA_AWT_WM_NONREPARENTING=1    # Fix for Java applications in dwm
