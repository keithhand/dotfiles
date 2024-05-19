#!/usr/bin/env bash

theme_name=$(echo $THEME | awk -F"-" '{for(i=1;i<=NF;i++){printf "%s%s", toupper(substr($i,1,1)), substr($i,2); if(i<NF) printf " "}}')
full_theme_name=$theme_name.tmTheme
theme_dir="$(bat --config-dir)/themes"
if [[ ! -f $theme_dir/$full_theme_name ]]; then
  echo "missing bat theme... downloading..."
  mkdir -p $theme_dir
  git_clone https://github.com/catppuccin/bat.git
  cp "$output_dir/themes/$full_theme_name" "$theme_dir"
  bat cache --build
fi

export BAT_THEME="$theme_name"
alias cato >/dev/null 2>&1 || alias cato="$(which cat)"
alias cat="bat"
