# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/alex/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
ZSH_THEME="mytheme"

plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
alias ll='ls -la'
alias vi='nvim'
alias zshconfig="nvim ~/.zshrc"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
