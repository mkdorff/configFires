#! /bin/zsh

# Some Aliases
alias ys='yarn start'
alias c.='code .'
alias hl='heroku local'
alias kan='killall node'

export ZSH=$HOME/.oh-my-zsh
export EDITOR='nvim'
export CONFIG_PATH=$HOME/Documents/configFiles
export CONFIG_SCRIPTS=$HOME/Documents/configFiles/applescripts
ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
export NVM_DIR=~/.nvm
test -e $(brew --prefix nvm)/nvm.sh && source $(brew --prefix nvm)/nvm.sh
test $(command -v pyenv) && eval "$(pyenv init -)"