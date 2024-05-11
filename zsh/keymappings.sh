#!/usr/bin/env bash

## binds up and down arrow keys to history functions
up="^[[A"
down="^[[B"
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey $up up-line-or-beginning-search
bindkey $down down-line-or-beginning-search
