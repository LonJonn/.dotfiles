# Loading Homebrew
[[ $(uname) == "Linux" ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Set FPATH for homebrew completions
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH