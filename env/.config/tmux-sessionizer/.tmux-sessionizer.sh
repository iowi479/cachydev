#!/bin/sh

echo "Skript running"
if [ "$(pwd)" = "$HOME/personal" ]; then
    clear
 #return   exit
fi

tmux new-window -dn run
#clear

tmux select-window -t 1
nvim .
#clear

