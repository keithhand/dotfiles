# Auto-attach to a tmux terminal, if necessary
if command -v tmux &> /dev/null && [ -z "$TMUX" ]
then
    default="default"
    tmux new \; set-option destroy-unattached;
    exit
fi

# sourcing
zsh_config_dir="$XDG_CONFIG_HOME/zsh/"
source $zsh_config_dir/aliases
source $zsh_config_dir/paths

# Lazy load all plugins
for f in $XDG_CONFIG_HOME/zsh/plugins/*; do
  source $f
done

# Footer prompt
function _bottom_prompt {
  tput cup $(($LINES-1)) 0
}
add-zsh-hook precmd _bottom_prompt
alias clear="clear && _bottom_prompt"

# zsh options
setopt HIST_SAVE_NO_DUPS
setopt globdots

# key mappings
## binds up and down arrow keys to history functions
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# zsh autocompletions
autoload -Uz compinit
fpath=(/srv/git/zsh-users/zsh-completions/src $fpath)
compdump=$XDG_DATA_HOME/zsh/.zcompdump
rm -f $compdump && compinit -d $compdump
