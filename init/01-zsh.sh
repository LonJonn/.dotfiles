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

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Themes

# Installing Powerlevel10k Theme
if [[ ! -d $ZSH_CUSTOM/themes/powerlevel10k ]]; then
	echo "Installing Powerlevel10k Theme for Oh My Zsh!"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi

# Plugins

# Zsh Syntax Highlighting
if [[ ! -d $ZSH_CUSTOM/plugins/zsh-syntax-highlighting ]]; then
	echo "Installing Zsh Syntax Highlighting Plugin"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

#
if [[ ! -d $ZSH_CUSTOM/plugins/zsh-autosuggestions ]]; then
	echo "Installing Zsh Autosuggestions Plugin"
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi