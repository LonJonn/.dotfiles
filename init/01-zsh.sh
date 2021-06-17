#!/bin/bash

# Installing ZSH on Linux (default shell on OSX)
if [[ $(uname) == "Linux" ]] && [[ ! $(which zsh) ]]; then
	echo "Installing Zsh"
	sudo apt install zsh
fi

# Installing Oh My Zsh!
if [[ ! -d $HOME/.oh-my-zsh ]]; then
	echo "Installing Oh My Zsh!"
	RUNZSH="no" \
	KEEP_ZSHRC="yes" \
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	# Clean up post-install files
	rm $HOME/.shell.pre-oh-my-zsh
fi

# Installing Powerlevel10k Theme
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
if [[ ! -d $ZSH_CUSTOM/themes/powerlevel10k ]]; then
	echo "Installing Powerlevel10k Theme for Oh My Zsh!"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi
