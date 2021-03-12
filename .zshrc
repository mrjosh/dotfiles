export ZSH="/Users/josh/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export GOPATH="/Users/josh/.go"

export PATH=$PATH:$GOPATH/bin
plugins=(zsh-autosuggestions)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH=~/.npm-global/bin:$PATH
export PATH="$PATH:/Users/josh/.bin"
export PATH="$PATH:/Users/josh/.bin/nvim/bin"

alias vim='nvim'
alias nano='vim'
alias k="kubectl"
alias h="helm"
alias ter="terraform"
