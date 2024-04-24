#!/usr/bin/env bash

addToPath() {
  if [[ "$PATH" != *"$1"* ]]; then
    export PATH=$PATH:$1
  fi
}

addToPathFront() {
  if [[ "$PATH" != *"$1"* ]]; then
    export PATH=$1:$PATH
  fi
}

addToPathFront "$HOME/bin:/usr/local/bin"
addToPathFront "$HOME/.local/bin"
addToPathFront "$HOME/.local/scripts"
addToPathFront "$HOME/.kubectx"
addToPath "/mnt/c/Windows/System32/WindowsPowerShell/v1.0"
addToPath "/mnt/c/Users/rkeit/AppData/Local/Programs/Microsoft VS Code/bin"

unfunction addToPath addToPathFront