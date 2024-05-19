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

git_config() {
	config_dir="$XDG_CONFIG_HOME/git"
	mkdir -p "$config_dir"
	touch "$XDG_CONFIG_HOME/git/config"

	git_set() { git config --global "$1" "$2"; }
	git_set user.name "keith.hand"
	git_set user.email "43491549+keithhand@users.noreply.github.com"
	git_set core.editor "vim"
	git_set init.defaultBranch "main"
	git_set commit.gpgsign true
}
