#!/usr/local/bin/zsh
# A incredibly simple script to manage dotfiles.

if [ "$1" = 'install' ]; then
  ~/.dotfiles/install.zsh
elif [ "$1" = 'symlink' ]; then
  ~/.dotfiles/symlink.zsh
elif [ "$1" = 'brewfile' ]; then
  $EDITOR ~/.dotfiles/brew/Brewfile
elif [ "$1" = 'self-edit' ]; then
  $EDITOR "$0"
elif [ "$1" = '' ]; then
  printmsg error "Error: Requires a command. Did you mean \"dotfiles install\"?" 1>&2
  exit 1
else
  printmsg error "Error: Provided argument \"$1\" is not a valid option" 1>&2
  exit 1
fi
