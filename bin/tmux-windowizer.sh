#!/usr/bin/env bash

if [ -z "$TMUX" ]; then
  echo "This script must be run from within tmux session"
  exit 1
fi

SESSION_NAME=$(tmux display-message -p '#S')

if [ -z "$1" ]; then
  echo "Usage: windowize.sh <window_name>"
  exit 1
fi

WINDOW_NAME=$1

tmux new-window -t $SESSION_NAME -n $WINDOW_NAME
