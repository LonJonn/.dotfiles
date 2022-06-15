# Fig pre block. Keep at the top of this file.
[[ ! $(which fig) =~ "not found" ]] && source "$HOME/.fig/shell/profile.pre.bash"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	source "$HOME/.bashrc"
    fi
fi

# if running zsh
if [ -n "$ZSH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.zshrc" ]; then
	source "$HOME/.zshrc"
    fi
fi

# Fig post block. Keep at the bottom of this file.
[[ ! $(which fig) =~ "not found" ]] && source "$HOME/.fig/shell/profile.post.bash"