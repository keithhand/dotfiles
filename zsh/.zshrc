# Auto-attach to a tmux terminal, if necessary
if command -v tmux &> /dev/null && [ -z "$TMUX" ]
then
    default="default"
    tmux new \; set-option destroy-unattached;
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

# moved to plugins
# To customize prompt, run `p10k configure` or edit ~/.config//zsh//.p10k.zsh.
#[[ ! -f ~/.config//zsh//.p10k.zsh ]] || source ~/.config//zsh//.p10k.zsh
