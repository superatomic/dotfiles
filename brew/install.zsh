#!/usr/local/bin/zsh
# Installs homebrew, the brews from Brewfile, and updates.

if ! type brew &>/dev/null; then
  printmsg action "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || exit 1
  printmsg success "Homebrew is installed!"
else
  printmsg info "Homebrew is already installed"
fi

printmsg action "Setting up homebrew..."

brew developer off

peval "brew bundle --no-lock --cleanup install"
peval "brew upgrade"
peval "brew cleanup"

peval "brew info"
peval "brew doctor"
