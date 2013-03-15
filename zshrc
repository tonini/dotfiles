. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"
export TM_RUBY=/usr/bin/ruby
export PATH=/opt/homebrew/bin:/usr/local/git/bin:~/pear/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export NODE_PATH=/usr/local/lib/node_modules

PATH=/usr/local/share/python:/usr/local/bin:~/bin:~/.bin:/usr/local/sbin:~/pear/bin:$PATH
PATH=$HOME/.rbenv/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi