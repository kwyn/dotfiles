#!/bin/bash
# Get the root directory path for all dotfiles
DIR="$(  cd"$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)" 
# Link the dotfiles/.zshrc to ~/.zshrc
script="$0"

# ln -sv ${DIR}/.zshrc ~/.zshrc
