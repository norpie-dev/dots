# Blank line after output
precmd() {
    precmd() {
        print -P "$(date +%H:%M) %F{27}%B</>%b%F{15}"
    }
}

# Prompt functions

# Variables for prompt
export NEWLINE=$'\n'

export USERNAME="%n"
export MACHINE="%m"
export DIRECTORY="%~"
export TIME="%T"

# Font
export BOLD_START="%B"
export BOLD_STOP="%b"

export UNDERLINE_START="%U"
export UNDERLINE_STOP="%u"

# Colors
Black="%F{0}"
Maroon="%F{1}"
Green="%F{2}"
Olive="%F{3}"
Navy="%F{4}"
Purple="%F{5}"
Teal="%F{6}"
Silver="%F{7}"
Grey="%F{8}"
Red="%F{9}"
Lime="%F{10}"
Yellow="%F{11}"
Blue="%F{12}"
Fuchsia="%{13}"
Aqua="%F{14}"
White="%F{15}"

export EMPHESIS_COLOR="%F{27}"

#Prompt
#export PROMPT="%F{27}%B%n%b %F{15}on %F{27}%B%m%b %F{15}in %F{27}%B%~%b ${NEWLINE}%F{15}%T %F{27}%B<>%b %F{15}"

export PROMPT="\
$EMPHESIS_COLOR$BOLD_START$USERNAME$BOLD_STOP$White on $EMPHESIS_COLOR$BOLD_START$MACHINE$BOLD_STOP$White in $EMPHESIS_COLOR$BOLD_START$DIRECTORY$BOLD_STOP$White\
$NEWLINE\
$TIME $EMPHESIS_COLOR$BOLD_START<>$BOLD_STOP $White\
"
