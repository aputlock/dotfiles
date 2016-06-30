#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERM="xterm-256color"
alias ls='ls --color=auto'
alias chrome="google-chrome-stable"
alias rdebug="ruby -r debug"
alias ocaml="rlwrap ocaml"
alias guile="rlwrap guile"
alias wififix="sudo rmmod iwlmvm iwlwifi && sudo modprobe iwlmvm"
# alias gcc="gcc -ansi -Wall -g -O0 -Wwrite-strings -Wshadow -pedantic-errors -fstack-protector-all"

# colors
green="\[\033[0;32m\]"
blue="\[\033[0;36m\]"
red="\[\033[0;31m\]"
reset="\[\033[0m\]"

# Change command prompt
source /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="[$red\u$green\$(__git_ps1)$blue \W$reset]  $ "
