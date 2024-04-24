#!/usr/bin/env bash

source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config//zsh//.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.config//zsh//.p10k.zsh.
[[ ! -f ~/.config//zsh//.p10k.zsh ]] || source ~/.config//zsh//.p10k.zsh

# Footer prompt
function _bottom_prompt {
  tput cup $(($LINES-1)) 2
}
# Catch window resize
trap '_bottom_prompt' WINCH
# Catch after canceling command that moves prompt
add-zsh-hook precmd _bottom_prompt
alias clear="clear && _bottom_prompt"
