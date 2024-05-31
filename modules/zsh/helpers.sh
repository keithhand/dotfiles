#!/usr/bin/env bash

git_clone() {
	if [[ -z $1 ]]; then
		echo "Please provide an http link to a git repository."
		return
	fi
	url=$1
	author=$(basename $(dirname $url))
	repo=$(basename $url .git)
	output_dir=$GIT_DIRECTORY/$author/$repo
	git clone -q $url $output_dir
}

tmux_exit() {
	tmux switch-client -t "${TMUX_LAST:-$DEFAULT_TMUX_SESSION}"
	exit
}
