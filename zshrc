# Fig pre block. Keep at the top of this file.
[[ ! $(which fig) =~ "not found" ]] && source "$HOME/.fig/shell/zshrc.pre.zsh"

# P10k Instant Prompt
source ~/.config/zsh/instant-prompt.zsh

# Load Homebrew
source ~/.config/homebrew.zsh

# Set Editor
export EDITOR="nvim"

# Zsh
export ZSH=~/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  git
  fd
  fzf
  brew
  docker
  npm
  nvm
  postgres
  yarn
  z
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# Load Oh My Zsh & p10k
source $ZSH/oh-my-zsh.sh
source ~/.p10k.zsh

# Load NVM
source ~/.config/nvm.zsh

# Configs
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/functions.zsh
source ~/.config/fzf.zsh

# Fig post block. Keep at the bottom of this file.
[[ ! $(which fig) =~ "not found" ]] && source "$HOME/.fig/shell/zshrc.post.zsh"