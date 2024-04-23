# Auto-attach to a tmux terminal, if necessary
if command -v tmux &> /dev/null && [ -z "$TMUX" ]
then
    default="tmux-default"
    tmux attach -t $default &>/dev/null || tmux new -s $default
#    exit
fi

zsh_config_dir="$XDG_CONFIG_HOME/zsh/"
source $zsh_config_dir/aliases
source $zsh_config_dir/paths

# zsh options
setopt HIST_SAVE_NO_DUPS

# zsh autocompletions
autoload -Uz compinit
fpath=(/srv/git/zsh-users/zsh-completions/src $fpath)
compdump=$XDG_DATA_HOME/zsh/.zcompdump
rm -f $compdump && compinit -d $compdump
_comp_options+=(globdots) # With hidden files

# Lazy load all plugins
for f in $XDG_CONFIG_HOME/zsh/plugins/*; do
  source $f
done
