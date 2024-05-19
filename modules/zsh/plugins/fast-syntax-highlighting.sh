#!/usr/bin/env bash

source $(brew --prefix)/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# download and configure theme
theme_url="https://raw.githubusercontent.com/catppuccin/zsh-fsh/main/themes/catppuccin-mocha.ini"
file_name=$(basename $theme_url)
theme_path=$XDG_CONFIG_HOME/fsh
if [[ ! -f $theme_path/$file_name ]]; then
	echo "missing zsh-fsh theme... downloading..."
	mkdir -p "$theme_path"
	curl -q "$theme_url" --output "$theme_path/$file_name"
	echo "downloaded... updating theme..."
	fast-theme XDG:catppuccin-mocha
fi
