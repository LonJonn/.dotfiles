#!/bin/zsh

[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && source "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm

if [[ $(which node) =~ "not found" ]]; then
	echo "Installing latest node"
	nvm install node
fi
