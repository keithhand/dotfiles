#!/usr/bin/env bash

alias vim="nvim"
alias dotFileInstall="$DOTFILES/install"
alias rz="source $XDG_CONFIG_HOME/zsh/.zshrc"
alias dp="dotFileInstall && rz"

git_clone() {
  url=$1
  author=$(basename $(dirname $url))
  repo=$(basename $url .git)
  git clone -q $url $GIT_DIRECTORY/$author/$repo
}

genFileAliases() {
  declare -A label
  label[dotfile]="d"
  alias "e$label[$1]$2"="vim $3"
  alias "c$label[$1]$2"="cat $3"
}

genFileAliases "dotfile" "a" "$XDG_CONFIG_HOME/zsh/aliases"
genFileAliases "dotfile" "p" "$XDG_CONFIG_HOME/zsh/paths"
genFileAliases "dotfile" "b" "$XDG_CONFIG_HOME/zsh/.zshrc"
genFileAliases "dotfile" "t" "$XDG_CONFIG_HOME/tmux/.tmux.conf"
genFileAliases "dotfile" "nv" "$XDG_CONFIG_HOME/nvim/init.lua"
genFileAliases "dotfile" "nvk" "$XDG_CONFIG_HOME/nvim/lua/keithhand/keymappings.lua"

unfunction genFileAliases
