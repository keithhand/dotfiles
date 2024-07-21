#!/usr/bin/env bash

mkdir -p "$XDG_DATA_HOME/zsh"
tty="$(tty)"
text_editor="nvim"
export GPG_TTY=$tty
export HISTFILE="$XDG_DATA_HOME/zsh/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
export THEME="catppuccin-mocha"
export UID="$UID"
export GID="$GID"
export VISUAL="$text_editor"
export EDITOR="$text_editor"
export KUBE_EDITOR="$text_editor"
export GIT_EDITOR="$EDITOR"
export DOTFILES="$HOME/.dotfiles"
export OBSIDIAN_DIRECTORY="$HOME/obsidian/personal-vault"
