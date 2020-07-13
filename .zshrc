autoload -U colors && colors

PS1="%B%{$fg[cyan]%}$(date +"%H:%M:%S") %{$fg[magenta]%}%~ %{$reset_color%}$%b "

HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000
setopt autocd

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

bindkey -v
export KEYTIMEOUT=1

export PATH
export HISTCONTROL=ignoreboth

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias vi='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alh --color=auto'
alias ipy='ipython'

source ~/.config/zsh/plugins/fast-syntax-highlighting.plugin.zsh
