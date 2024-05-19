#!/usr/bin/env bash

mkdir -p "$XDG_DATA_HOME/zsh"
tty="$(tty)"
export GPG_TTY=$tty
export HISTFILE="$XDG_DATA_HOME/zsh/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
export THEME="catppuccin-mocha"
export UID="$UID"
export GID="$GID"
