export ZSH="$HOME/.config/ohmyzsh"

ZSH_THEME="robbyrussell"

CASE_SENSITIVE="false"

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

DISABLE_MAGIC_FUNCTIONS="false"

DISABLE_LS_COLORS="false"

DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_CUSTOM="$ZSH/custom"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

export EDITOR="nvim"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# pnpm
export PNPM_HOME="/Users/brendancarlson/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$(brew --prefix)/opt/python@3.12/libexec/bin:$PATH"

# custom git commands.
export PATH="$HOME/.config/git/commands:$PATH"

# installed go binaries
export PATH="$HOME/go/bin:$PATH"

# bun completions
[ -s "/Users/brendancarlson/.bun/_bun" ] && source "/Users/brendancarlson/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# gnu coreutils
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

