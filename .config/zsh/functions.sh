# Fzf script for repos directory
function project() {
    dir=$(find repos -maxdepth 1 | fzf) && cd $dir
}

# cd with history, based on minecraft /back
function cd() {
    export LAST_DIR=$(pwd)
    builtin cd $@
}
function back() {
    cd $LAST_DIR
}

# Fzf config editor script
function config() {
    file=$(find $XDG_CONFIG_HOME -maxdepth 3 | fzf)
    [[ $file == "" ]] && exit 1
    [[ -d $file ]] && cd $file
    [[ -f $file ]] && vim $file
}

function script() {
    if [[ $# == 0 ]]; then
        file=$(find $SCRIPT_DIR | fzf) 
        [[ $file == "" ]] && exit 1
        [[ -d $file ]] && cd $file
        [[ -f $file ]] && vim $file
    else 
        SCRIPT_PATH="$HOME/.local/bin/$1"
        [ ! -f $SCRIPT_PATH ] && echo '#!/bin/sh' > $SCRIPT_PATH && chmod +x $SCRIPT_PATH 
        vim $SCRIPT_PATH
    fi 
}
