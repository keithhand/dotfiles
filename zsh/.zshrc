# Auto-attach to a tmux terminal, if necessary
if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
	tmux new \; set-option destroy-unattached
	exit
fi

# sourcing
source "$ZDOTDIR/environment.sh"
source "$ZDOTDIR/helpers.sh"

# Lazy load all plugins
for f in "$XDG_CONFIG_HOME"/zsh/plugins/*; do
	# shellcheck source=/dev/null
	source "$f"
done

source "$ZDOTDIR/paths.sh"
source "$ZDOTDIR/keymappings.sh"
source "$ZDOTDIR/aliases.sh"
