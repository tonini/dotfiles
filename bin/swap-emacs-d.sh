#!/bin/bash

if [ $1 ]; then
  if [ $1 == "cabbage" ] || [ $1 == "personal" ]; then
    echo -e "\033[1;31mRemove symlink:\033[0m [rm ~/.emacs.d]"
    rm ~/.emacs.d

    echo -e "\033[1;32mCreate symlink:\033[0m [ln -s /Users/tonini/Projects/emacs.d.$1 ~/.emacs.d]"
    ln -s /Users/tonini/Projects/emacs.d.$1 ~/.emacs.d
  fi
else
  echo -e "Argument must be 'cabbage' or 'personal'"
fi
