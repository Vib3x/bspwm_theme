#
# ~/.bashrc
#

[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

#use_color=true

export TERM=xterm-256color
export VISUAL=nvim
export EDITOR="$VISUAL"
export PATH
export HISTCONTROL=ignoreboth

export PS1="\[$(tput bold)\]\[\033[38;5;9m\][\[$(tput bold)\]\[\033[38;5;10m\]\u\[$(tput bold)\]\[\033[38;5;11m\]@\[$(tput bold)\]\[\033[38;5;14m\]\h\[$(tput bold)\]\[\033[38;5;15m\] \[$(tput bold)\]\[\033[38;5;13m\]\w\[$(tput bold)\]\[\033[38;5;9m\]]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias vi='nvim'
alias ls='ls --color=auto'
alias ll='ls -al'
alias more=less

shopt -s autocd

echo "The current date and time is:"
date +"%a %d.%m.%Y - %H:%M"
