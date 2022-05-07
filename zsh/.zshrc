export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="true"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8
export GOPATH="$HOME/.go"

export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/Users/josh/.bin/nvim-osx64/bin"
export PATH="$PATH:/Users/josh/.bin"
export PATH=~/.npm-global/bin:$PATH
export PATH="/usr/local/Cellar/tree-sitter/0.20.0/bin:$PATH"
export PATH="/Users/josh/.bin/protoc-3.18.0-rc-2-osx-x86_64/bin:$PATH"
export PATH="$PATH:$HOME/.go/bin"
export PATH="$PATH:/usr/local/Cellar/proxychains-ng/4.14/bin/"
export PATH="$PATH:/usr/local/Cellar/mtr/0.94/sbin"
export PATH="$PATH:/usr/local/Cellar/openjdk@11/11.0.12/bin"

alias luamake="$HOME/.language-servers/lua-language-server/3rd/luamake/luamake"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/Users/josh/.bin/protoc-gen-ts-0.5.0/bin:$PATH"
export PATH="$PATH:/usr/local/Cellar/gradle/7.3.3/bin"
export PATH="$PATH:$GOBIN/bin"
export PATH="$PATH:$HOME/.cargo/env"

export KUBE_EDITOR="nvim"

export PATH="$PATH:/Users/josh/.bin/zig"
export PATH="$PATH:/Users/josh/.bin/golangci-lint/golangci-lint-1.45.2-darwin-arm64"

eval "$(/Users/josh/.homebrew/bin/brew shellenv)"
