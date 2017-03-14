source ~/.dotfiles/zsh/antigen.zsh
source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/git-aliases.zsh
source ~/.dotfiles/zsh/exports.zsh
source ~/.dotfiles/zsh/functions.zsh
source ~/.dotfiles/zsh/helpers.zsh

# Add `~/.npm-packages` to PATH
export NPM_PACKAGES="${HOME}/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
export PATH="/usr/local/sbin:$PATH"

# Load antigen packages
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure


antigen apply