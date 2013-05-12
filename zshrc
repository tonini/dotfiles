. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

export EDITOR="emacsclient -c"
export TM_RUBY=/usr/bin/ruby
export PATH=/opt/homebrew/bin:/usr/local/git/bin:~/pear/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export NODE_PATH="/usr/local/share/npm/lib/node_modules"

PATH=/usr/local/share/npm/bin/:/usr/local/share/python:/usr/local/bin:~/bin:~/.bin:/usr/local/sbin:~/pear/bin:$PATH
PATH=$HOME/.rbenv/shims:$PATH
PATH=$HOME/pear/bin/phpunit:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
