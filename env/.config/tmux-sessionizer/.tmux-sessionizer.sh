#!/bin/sh

# Tmux Sessionizer Script
#
# This is a hydration script for tmux sessions.
# Here you can define which windows should be created
# and what commands should be run in each window.


tmux new-window -d -k -n 'dev' -t 2
tmux new-window -d -k -n 'nvim' -t 1 nvim .

tmux select-window -t 1


