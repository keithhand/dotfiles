#!/usr/bin/env bash

full_theme_name="$THEME.toml"
theme_dir="$XDG_CONFIG_HOME/alacritty/themes"
if [[ ! -f $theme_dir/$full_theme_name ]]; then
	echo "missing alacritty theme... downloading..."
	mkdir -p "$theme_dir"
	theme_url="https://github.com/catppuccin/alacritty/raw/main/catppuccin-mocha.toml"
	curl -LO --output-dir "$theme_dir" $theme_url
fi
