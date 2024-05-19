#!/usr/bin/env bash

# zoxide - better cd
alias cdo >/dev/null 2>&1 || alias cdo="$(which cd)"
export _ZO_DATA_DIR="$XDG_DATA_HOME/zoxide"
eval "$(zoxide init zsh --cmd cd)"
