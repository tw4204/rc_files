#!/bin/bash
PS1='[\D{%Y.%m.%d} - \t]🤔 \e[0;31m\u@\W\e[m\$ '
export CLICOLOR=1
vuno(){
  ssh vuno@192.168.0.$1
}
vuno50(){
  ssh vuno@192.168.50.$1
}
tw20() {
  ssh tw4204@192.168.20.$1
}
tw50() {
  ssh tw4204@192.168.50.$1
}
idc(){
  ssh tw4204@210.116.109.$1
}

export BASH_SILENCE_DEPRECATION_WARNING=1
alias gc='gitmoji -c'
