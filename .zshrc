export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export ZSH="$HOME/.oh-my-zsh"
export TERM=xterm-256color
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=true
export XDG_CONFIG_HOME="$HOME/.config"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting tmux)


bindkey '^N' autosuggest-accept

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
echo 'eval "$(atuin init zsh)"' >> ~/.zshrc

alias vimconf="vim ~/.config/nvim/init.vim"
alias vim=nvim
alias zshconfig="vim ~/.zshrc"
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# pnpm
export PNPM_HOME="/Users/z/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/z/.bun/_bun" ] && source "/Users/z/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
