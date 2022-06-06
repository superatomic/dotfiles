#!/usr/local/bin/zsh

source ~/.dotfiles/zsh/zshenv

~/.dotfiles/symlink.zsh

# Create `/etc/zshenv` to set $ZDOTDIR to the correct location. See zsh(1) for more information.
# shellcheck disable=SC2016
etc_zshenv='export ZDOTDIR="$HOME"/.config/zsh'
if [ ! -r /etc/zshenv ] || [ "$(cat /etc/zshenv)" != "$etc_zshenv" ]; then
  printmsg info 'Creating /etc/zshenv'
  echo "$etc_zshenv" | peval sudo tee /etc/zshenv # This requires sudo.
fi

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
