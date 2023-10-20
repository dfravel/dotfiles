export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/Applications/WebStorm.app/Contents/MacOS:$PATH"
export PATH="/usr/local/opt/krb5/bin:$PATH"

export EDITOR="code"
export VISUAL="code"

# NVM for Node Management
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh


autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/dfravel/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
  git
  brew
  common-aliases
  node
  npm
  rand-quote
  sudo
  yarn
  z
  colored-man-pages
  colorize
  cp
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

source ~/.aliases




startuparchy() {
    if hash archey 2>/dev/null; then
        archey
    else
        echo "you have archey in your startup but it does not exist"
        echo "run 'brew install archey4' to fix that"
    fi
}
startuparchy



# some helpful AWS aliases
# export PATH="$PATH:$HOME/.bash-my-aws/bin"
# source ~/.bash-my-aws/aliases
#source ~/.bash-my-aws/bash_completion.sh
# no longer need PHP
# export PATH="/usr/local/opt/php@7.4/bin:$PATH"
# export PATH="/usr/local/opt/php@7.4/sbin:$PATH"

# no longer need MySQL 
# export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# no longer doing any work with Go
# export GOPATH=$HOME/go
# export GOROOT="$(brew --prefix golang)/libexec"
# export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
# export GOBIN=$GOPATH/bin
# export GOSWAG=$GOPATH/bin/swag
# export GOPRIVATE="git-codecommit.us-east-2.amazonaws.com"export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
source /usr/local/opt/spaceship/spaceship.zsh
