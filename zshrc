# oh-my-zsh config

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="kennethreitz"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# personal config

. ~/.zsh/aliases

cdpath=(. ~/Projects )

fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)

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
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:$CLOJURESCRIPT_HOME/bin
# added by travis gem
source /Users/tonini/.travis/travis.sh
