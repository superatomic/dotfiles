#!/usr/local/bin/zsh

source ~/.dotfiles/zsh/zshenv

~/.dotfiles/symlink.zsh
if [[ $(uname) == "Darwin" ]]; then
  ~/.dotfiles/macos/install.zsh
  ~/.dotfiles/brew/install.zsh
fi
~/.dotfiles/fish/install.fish

if ! type rustup >/dev/null; then
  peval "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
fi

printmsg success 'Finished dotfile installation!'

source peval source "\$ZDOTDIR/.zshrc"

peval neofetch
printmsg success 'Done!'
