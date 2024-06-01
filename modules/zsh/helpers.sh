#!/usr/bin/env bash

tmux_exit() {
	tmux switch-client -t "${TMUX_LAST:-$DEFAULT_TMUX_SESSION}"
	exit
}
