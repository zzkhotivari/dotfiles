# Path to your oh-my-zsh installation.
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export TERM=xterm-256color

ZSH_THEME="robbyrussell"

export UPDATE_ZSH_DAYS=3

ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting z tmux)

if [ "$TMUX" = "" ]; then TERM=xterm-256color tmux; fi

alias vimconf="vim ~/.config/nvim/init.vim"
alias vim=nvim
alias zshconfig="vim ~/.zshrc"
alias docker-compose="docker compose"
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'


eval "$(starship init zsh)"
# pnpm
export PNPM_HOME="/home/z/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH=$PATH:/usr/local/go/bin
# pnpm end

bindkey '^N' autosuggest-accept

export PATH=/home/z/.local/bin:$PATH

# bun completions
[ -s "/Users/zuka/.bun/_bun" ] && source "/Users/zuka/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

