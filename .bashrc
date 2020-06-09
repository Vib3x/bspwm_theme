#
# ~/.bashrc
#

[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

#use_color=true

export TERM=xterm-256color
export TERMINAL=alacritty
export VISUAL=nvim
export BROWSER=brave
export EDITOR="$VISUAL"
export PATH
export HISTCONTROL=ignoreboth

export PS1="\[\033[38;5;6m\]\t\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;13m\]\W\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias vi='nvim'
alias ls='ls --color=auto'
alias ll='ls -al'
alias more=less

shopt -s autocd

