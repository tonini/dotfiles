#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

. ~/.zsh/aliases

# cdpath=(. ~/Projects )

fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)

function h () {
  cd ~/$1;
}

function c () {
  cd ~/Projects/$1;
}

function _h () {
  _files -W ~ -/
}

function _c () {
  _files -W ~/Projects -/
}

compdef _h h
compdef _c c

export EDITOR="emacsclient -t"
export TM_RUBY=/usr/bin/ruby
export PATH=/opt/homebrew/bin:/usr/local/git/bin:~/pear/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export NODE_PATH="/usr/local/lib/node_modules"
export PATH=$HOME/.cask/bin:$PATH
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home/"
export CLOJURESCRIPT_HOME="/Users/tonini/code/clojurescript"

export PATH=/usr/local/bin:~/bin:~/.bin:/usr/local/sbin:$PATH
export PATH=$PATH:/usr/local/heroku/bin
export PATH=$PATH:$CLOJURESCRIPT_HOME/bin
# added by travis gem
source /Users/tonini/.travis/travis.sh

eval "$(rbenv init -)"