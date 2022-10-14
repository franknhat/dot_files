#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ligma='sudo '
alias balls="pacman -S"
alias nuts="pacman -S"

alias update="sudo pacman -Syyuu && yay -Syu"

alias athome="xrandr --output DP-4 --primary && discord & disown  && exit"

alias ...='../..'
alias ....='../../..'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

neofetch
acpi

