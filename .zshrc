export ZSH="/Users/josh/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:$PATH

export GOPATH="/Users/josh/.go"

export PATH="$PATH:/usr/local/Cellar/nvim-osx64/bin/"
export PATH=$PATH:$GOPATH/bin

plugins=(zsh-autosuggestions)

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH=~/.npm-global/bin:$PATH

export PATH="$PATH:/Users/josh/.bin"
export PATH="$PATH:/Users/josh/.bin/nvim-osx64/bin"

alias vim='nvim'
alias nano='vim'
alias k="kubectl"
alias h="helm"
alias kcl="kubectl --kubeconfig /Users/josh/Projects/terraform/linode/casty-cluster-kubeconfig.yaml"
alias hcl="helm --kubeconfig /Users/josh/Projects/terraform/linode/casty-cluster-kubeconfig.yaml"
alias ter="terraform"
