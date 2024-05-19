#!/usr/bin/env bash

# zsh autocompletions
autoload -Uz compinit
fpath=(/srv/git/zsh-users/zsh-completions/src $fpath)
compdump=$XDG_DATA_HOME/zsh/.zcompdump
compinit -d $compdump &>/dev/null
