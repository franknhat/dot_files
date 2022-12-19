#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ligma='sudo '
alias balls="pacman -S"
alias nuts="pacman -S"
alias sugma="paru -S"
alias deletus="sudo pacman -Rns"
alias yah="echo 'YEET!'"

alias term="nohup alacritty & sleep 2 & rm nohup.out"

alias update="sudo pacman -Syyuu && paru -Sua"

alias athome="xrandr --output DP-4 --primary && discord & disown  && exit"

alias anicli="ani-cli"

alias ...='../..'
alias ....='../../..'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

neofetch | lolcat
acpi | lolcat

. "$HOME/.cargo/env"
