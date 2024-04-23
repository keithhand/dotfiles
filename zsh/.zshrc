# Auto-attach to a tmux terminal, if necessary
if command -v tmux &> /dev/null && [ -z "$TMUX" ]
then
    default="default"
    tmux new \; set-option destroy-unattached;
    exit
fi

# moved to plugins
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config//zsh//.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

zsh_config_dir="$XDG_CONFIG_HOME/zsh/"
source $zsh_config_dir/aliases
source $zsh_config_dir/paths

# zsh options
setopt HIST_SAVE_NO_DUPS
setopt globdots

# key mappings
## binds up and down arrow keys to history functions
## then appends cursor to the end of the selection
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# zsh autocompletions
autoload -Uz compinit
fpath=(/srv/git/zsh-users/zsh-completions/src $fpath)
compdump=$XDG_DATA_HOME/zsh/.zcompdump
rm -f $compdump && compinit -d $compdump

# Lazy load all plugins
for f in $XDG_CONFIG_HOME/zsh/plugins/*; do
  source $f
done

# moved to plugins
# To customize prompt, run `p10k configure` or edit ~/.config//zsh//.p10k.zsh.
#[[ ! -f ~/.config//zsh//.p10k.zsh ]] || source ~/.config//zsh//.p10k.zsh
