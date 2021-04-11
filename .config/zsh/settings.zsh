# History file
export HISTFILE='~/.cache/zsh/histfile'
export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTCONTROL=ignoreboth:erasedumps

# Auto-complete
autoload -U compinit
setopt autocd
setopt prompt_subst
setopt PROMPT_SUBST
setopt histignoredups
setopt inc_append_history share_history
compinit
_comp_options+=(globdots)
