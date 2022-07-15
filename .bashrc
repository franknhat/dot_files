#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias fucker='sudo '
alias ligma='sudo '
alias balls="pacman -S"
alias nuts="pacman -S"
# alias ligma_balls='sudo pacman'
alias ...='../..'
alias ....='../../..'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

neofetch
acpi
. "$HOME/.cargo/env"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/frank/misc/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/frank/misc/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/frank/misc/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/frank/misc/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

