#!/usr/bin/env bash

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# set default apps
export VISUAL=nvim
export EDITOR="$VISUAL"
export TERMINAL=st

# customize prompt
PS1="[\[\e[32m\]\W\[\e[m\]]"

# avoid duplicates in the history
export HISTCONTROL=ignoreboth:erasedups

# vim bindings
set -o vi

# enable auto cd
shopt -s autocd

# listing commands
alias ls="ls --color=auto --group-directories-first"
alias la="ls -A"

# apps aliases
alias r=ranger
alias e=$EDITOR
alias start-wifi="sudo netctl start default"
alias py=python3
alias uzip=unzip
# bookmark locations 
h="~"
r="/"
m="/mnt/main"
d="/mnt/main/downloads"
t="/mnt/main/temp"
p="/mnt/main/projects"
n="/mnt/main/projects/notes"
l="/mnt/main/projects/linux"
b="~/bin"

# traverse directories
alias gu="cd .."
alias gh="cd $h"
alias gr="cd $r"
alias gm="cd $m"
alias gd="cd $d"
alias gt="cd $t"
alias gp="cd $p"
alias gn="cd $n"
alias gl="cd $l"
alias gb="cd $b"
alias g3="cd $p/3d-printing"

# edit files
alias ev="$EDITOR ~/.config/nvim/init.vim"
alias eb="$EDITOR ~/.bashrc"
alias ebp="$EDITOR ~/.bash_profile"
alias ex="$EDITOR ~/.xinitrc"
alias exr="$EDITOR ~/.Xresources"
alias er="$EDITOR ~/.config/ranger/rc.conf"
alias es="$EDITOR ~/.config/sxhkd/sxhkdrc"
alias et="$EDITOR $n/todo"

# pacman and yay aliases
source package-manager-aliases

# aliases
alias q=exit
alias cl=clear
alias please="sudo !!"
alias rb=". ~/.bashrc"
alias rx="xrdb ~/.Xresources"
alias rs="pkill -USR1 -x sxhkd"

#fff
fm() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

## fzf
export FZF_DEFAULT_OPTS='--height=50% --reverse --border --multi'

#function sf {
#    ag --hidden --ignore .git -g "" | fzf --preview 'bat --style=numbers --color=always {}'
#}
#bind '"\C-f":"$(sf)"'
#
#function sd {
#    find -type d -not -iwholename '*.git*' | fzf
#}
#bind '"\C-d":"$(sd)"'
#
#function sh {
#    history | awk '{$1="";if(!a[$0]++) print substr($0,2)}' | fzf --tac --tiebreak=index
#}
#bind '"\C-h":"$(sh)"'

# add colors to less (the default pager)
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

#nav
source file-manager
