# Use vi for keybinding
bindkey -v

# Bump up history settings
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# Load up my dotfiles
source $HOME/dotfiles/zsh/aliases
source $HOME/dotfiles/zsh/functions
source $HOME/dotfiles/zsh/prompt
source $HOME/dotfiles/zsh/completion

# Add custom commands to path
export PATH="$HOME/dotfiles/bin:$PATH"

# Configure rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

