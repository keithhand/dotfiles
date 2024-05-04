#!/usr/bin/env bash

# eza - custom ls
# shellcheck disable=SC2139
alias lso >/dev/null 2>&1 || alias lso="$(which ls)"
alias ls="eza --color=auto --icons=auto --group-directories-first --across"
alias ll="ls --long -g --smart-group --git --time-style=relative --header -F"
alias la="ll --all"
alias lp="la --tree --ignore-glob=.git --git-ignore --total-size"
