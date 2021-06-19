#!/bin/zsh

# Homebrew required for NVM
source ~/.config/homebrew.zsh

# Load NVM
source ~/.config/nvm.zsh

# Installing Node
if [[ $(which node) =~ "not found" ]]; then
	echo "Installing latest node"
	nvm install node
fi
