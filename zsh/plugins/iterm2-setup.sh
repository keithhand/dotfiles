#!/usr/bin/env bash

if [[ $(uname) == "Darwin" ]]; then
  # Set iterm2 to use dotfile config by default
  defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$XDG_CONFIG_DIR/iterm2"
  defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

  # Set up theme
  theme_name="catppuccin-$CATPPUCCIN_THEME.itermcolors"
  if [[ ! -f $XDG_CONFIG_HOME/iterm2/$theme_name ]]; then
    git_clone https://github.com/catppuccin/iterm.git 2>/dev/null
    cp $GIT_DIRECTORY/$author/$repo/colors/$theme_name $XDG_CONFIG_HOME/iterm2
  fi
fi
