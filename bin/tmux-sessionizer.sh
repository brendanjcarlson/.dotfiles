#!/usr/bin/env bash

# This script either creates a new session or attaches to an existing one

if [[ $# -eq 1 ]]; then
    SELECTED=$1
else
    SELECTED=$(find ~/personal/projects ~/work -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $SELECTED ]]; then
    exit 0
fi

SELECTED_NAME=$(basename "$SELECTED" | tr . _)
TMUX_PID=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $TMUX_PID ]]; then
    tmux new-session -s "$SELECTED_NAME" -c "$SELECTED"
    exit 0
fi

if ! tmux has-session -t "$SELECTED_NAME" 2>/dev/null; then
    tmux new-session -d -s "$SELECTED_NAME" -c "$SELECTED"
fi

tmux attach -t "$SELECTED_NAME"
