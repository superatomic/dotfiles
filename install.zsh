#!/usr/local/bin/zsh

source ~/.dotfiles/zsh/zshenv

~/.dotfiles/symlink.zsh
if [[ $(uname) == "Darwin" ]]; then
  ~/.dotfiles/macos/install.zsh
  ~/.dotfiles/brew/install.zsh
fi
~/.dotfiles/fish/install.fish

printmsg success 'Finished dotfile installation!'

source peval "source \"\$ZDOTDIR/.zshrc\""

peval neofetch
printmsg success 'Done!'
