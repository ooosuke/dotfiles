# homebrew see https://brew.sh/index_ja
export PATH=$PATH:/opt/homebrew/bin

# go see https://github.com/syndbg/goenv/blob/master/INSTALL.md
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# starship
eval source <(/opt/homebrew/bin/starship init zsh --print-full-init)

# alias
alias dc='docker'
alias dcp='docker-compose'

if [[ $(command -v exa) ]]; then
  alias ls='exa --icons --git'
  alias lt='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
  alias ltl='exa -T -L 3 -a -I "node_modules|.git|.cache" -l --icons'
fi
