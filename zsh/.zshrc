# Auto-attach to a tmux terminal, if necessary
if command -v tmux &> /dev/null && [ -z "$TMUX" ]
then
    default="default"
    tmux new \; set-option destroy-unattached;
    exit
fi

mkdir -p "$XDG_DATA_HOME/zsh"
export GPG_TTY=$(tty)
export HISTFILE="$XDG_DATA_HOME/zsh/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
export THEME="catppuccin-mocha"

# sourcing
source $ZDOTDIR/helpers.sh

# Lazy load all plugins
for f in $XDG_CONFIG_HOME/zsh/plugins/*; do
  source $f
done

source $ZDOTDIR/paths.sh
source $ZDOTDIR/keymappings.sh
source $ZDOTDIR/aliases.sh
