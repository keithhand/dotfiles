#!/usr/bin/env bash

repo="Dbz/kube-aliases"
script="kube-aliases.plugin.zsh"
repoPath="$GIT_DIRECTORY/$repo"
if [[ ! -f $repoPath/$script ]]; then
	echo "missing Kubernetes aliases... downloading..."
	git clone gh:$repo "$repoPath"
fi

# shellcheck source=/dev/null
source "$repoPath/$script"
