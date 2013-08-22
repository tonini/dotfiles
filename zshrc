. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

export EDITOR="emacsclient"
export TM_RUBY=/usr/bin/ruby
export PATH=/opt/homebrew/bin:/usr/local/git/bin:~/pear/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export NODE_PATH="/usr/local/share/npm/lib/node_modules"

# Go ENVIRONMENT setup
export GOPATH=$HOME/Projects/gocode
export PATH=$PATH:$GOPATH/bin

PATH=/usr/local/share/npm/bin:/usr/local/bin:~/bin:~/.bin:/usr/local/sbin:$PATH
PATH=$PATH:/usr/local/heroku/bin
PATH=$PATH:$HOME/.rvm/bin