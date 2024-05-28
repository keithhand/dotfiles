#!/usr/bin/env bash

alias vim="nvim"
alias dotFileInstall='$DOTFILES/install'
alias rz='source $XDG_CONFIG_HOME/zsh/.zshrc'
alias dp="dotFileInstall && rz"
alias db='ansible-playbook --ask-become-pass $DOTFILES/ansible.yml && dp'
alias dc="docker-compose"
alias tf="terraform"
alias mux="tmuxinator"
alias lg="lazygit"
alias buu="brew update && brew upgrade && brew cleanup"

genFileAliases() {
	declare -A label
	aliastype="$1"
	aliaskey="$2"
	aliaspath="$3"

	label=(
		[dotfile]="d"
	)
	shortcut="${label[$aliastype]}$aliaskey"

	# shellcheck disable=SC2139
	alias "e$shortcut"="vim $aliaspath"
	# shellcheck disable=SC2139
	alias "c$shortcut"="cat $aliaspath"
}

genFileAliases "dotfile" "a" "\$XDG_CONFIG_HOME/zsh/aliases.sh"
genFileAliases "dotfile" "e" "\$XDG_CONFIG_HOME/zsh/environment.sh"
genFileAliases "dotfile" "h" "\$XDG_CONFIG_HOME/zsh/helpers.sh"
genFileAliases "dotfile" "k" "\$XDG_CONFIG_HOME/zsh/keymappings.sh"
genFileAliases "dotfile" "p" "\$XDG_CONFIG_HOME/zsh/paths.sh"
genFileAliases "dotfile" "b" "\$XDG_CONFIG_HOME/zsh/.zshrc"
genFileAliases "dotfile" "t" "\$XDG_CONFIG_HOME/tmux/.tmux.conf"
genFileAliases "dotfile" "nv" "\$XDG_CONFIG_HOME/nvim/init.lua"
genFileAliases "dotfile" "nvk" \
	"\$XDG_CONFIG_HOME/nvim/lua/keithhand/keymappings.lua"

unfunction genFileAliases
