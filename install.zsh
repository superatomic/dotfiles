#!/usr/local/bin/zsh

source ~/.dotfiles/zsh/zshenv

~/.dotfiles/symlink.zsh
~/.dotfiles/macos/install.zsh
~/.dotfiles/brew/install.zsh
~/.dotfiles/fish/install.fish

printmsg success 'Finished dotfile installation!'

source peval "source \"\$ZDOTDIR/.zshrc\""

peval neofetch
