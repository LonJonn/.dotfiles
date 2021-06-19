#!/bin/zsh

# Load NVM
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && source "$(brew --prefix)/opt/nvm/nvm.sh"

# Installing Node
if [[ $(which node) =~ "not found" ]]; then
	echo "Installing latest node"
	nvm install node
fi
