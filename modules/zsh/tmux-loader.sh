#!/usr/bin/env bash

autoLoadTmux() {
	ignore_envs=(
		# vscode terminal
		"$VSCODE_INJECTION"
		# jetbrains terminal
		"$INTELLIJ_ENVIRONMENT_READER"
		"$JETBRAINS_INTELLIJ_ZSH_DIR"
		# tmux already running
		"$TMUX"
	)
	for env_var in ${ignore_envs[@]}; do
		if [[ "$env_var" ]]; then
			false
			return
		fi
	done
	true
}

tmux_exit() {
	paneCount=$(tmux list-panes | wc -l)
	windowCount=$(tmux list-windows | wc -l)
	if [ "$windowCount" -ne 1 ] || [ "$paneCount" -ne 1 ]; then
		return
	fi
	tmux switch-client -t "${TMUX_LAST:-$DEFAULT_TMUX_SESSION}"
}

if autoLoadTmux; then
	export DEFAULT_TMUX_SESSION=home
	exec tmux new-session -A -s $DEFAULT_TMUX_SESSION
	trap tmux_exit EXIT
fi