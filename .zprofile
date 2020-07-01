#!/bin/zsh

export XSECURELOCK_PASSWORD_PROMPT=asterisks 
export XSECURELOCK_SHOW_DATETIME=1 
export XSECURELOCK_FONT="Cascadia Code:size=12" 
export XSECURELOCK_AUTH_CURSOR_BLINK=0 
export XSECURELOCK_SHOW_HOSTNAME=0 
export XSECURELOCK_SHOW_USERNAME=0

export PATH=/home/alex/.scripts:$PATH
export TERM=xterm-256color
export TERMINAL=alacritty
export VISUAL=nvim
export BROWSER=chromium
export EDITOR="$VISUAL"
export IPYTHONDIR="~/.config/ipython"
