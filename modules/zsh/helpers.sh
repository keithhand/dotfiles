#!/usr/bin/env bash

tmux_exit() {
	paneCount=$(tmux list-panes | wc -l)
	windowCount=$(tmux list-windows | wc -l)
	if [ "$windowCount" -ne 1 ] || [ "$paneCount" -ne 1 ]; then
		return
	fi
	tmux switch-client -t "${TMUX_LAST:-$DEFAULT_TMUX_SESSION}"
}

trap tmux_exit EXIT
