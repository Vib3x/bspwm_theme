#!/bin/zsh

emulate sh -c 'source /etc/profile'

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
