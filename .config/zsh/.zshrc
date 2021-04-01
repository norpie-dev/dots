# Abstraction
source ~/.config/zsh/environment

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

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
   if [[ ${KEYMAP} == vicmd ]] ||
      [[ $1 = 'block' ]]; then
      echo -ne '\e[1 q'
   elif [[ ${KEYMAP} == main ]] ||
        [[ ${KEYMAP} == viins ]] ||
        [[ ${KEYMAP} = '' ]] ||
        [[ $1 = 'beam' ]]; then
      echo -ne '\e[5 q'
   fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

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

# Blank line after output
precmd() {
    precmd() {
        print -P "$(date +%H:%M) %F{27}%B</>%b%F{15}"
    }
}

eval `ssh-agent`
ssh-add-defaults
clear

# Auto-complete
autoload -U compinit
setopt autocd
setopt histignoredups
setopt inc_append_history share_history
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
clear

# fast-syntax-highlighting theme
fast-theme zdharma

# start commmands
clear
