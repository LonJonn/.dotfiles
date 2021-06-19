#!/bin/zsh

# Installing VimPlug
XDG_DATA_HOME=~/.local/share
if [[ ! -f $XDG_DATA_HOME/nvim/site/autoload/plug.vim ]]; then
	echo "Installing VimPlug"
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi
