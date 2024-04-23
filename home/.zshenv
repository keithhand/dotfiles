text_editor="vim"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/.local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# defaults
export EDITOR="$text_editor"
export VISUAL="$text_editor"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# Evironment variables
export GIT_DIRECTORY=/srv/git/
export GIT_EDITOR="vim"
export DOTFILES="$HOME/.dotfiles"
