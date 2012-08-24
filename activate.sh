#!/usr/bin/bash

dotfiles_dir="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for dotfile in bash_aliases bash_profile bashrc gitconfig vimrc
do
  ln -s $dotfiles_dir/$dotfile ~/.$dotfile
done
