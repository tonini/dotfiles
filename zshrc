. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

export EDITOR="emacsclient"
export TM_RUBY=/usr/bin/ruby
export PATH=/opt/homebrew/bin:/usr/local/git/bin:~/pear/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export NODE_PATH="/usr/local/share/npm/lib/node_modules"
export PATH=$HOME/.cask/bin:$PATH

export PATH=/usr/local/share/npm/bin:/usr/local/bin:~/bin:~/.bin:/usr/local/sbin:$PATH
export PATH=$PATH:/usr/local/heroku/bin
export PATH=$PATH:$HOME/.rvm/bin
# added by travis gem
source /Users/tonini/.travis/travis.sh
