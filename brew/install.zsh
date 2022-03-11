#!/usr/local/bin/zsh
# Installs homebrew, the brews from Brewfile, and updates.

if ! type brew &>/dev/null; then
  printmsg action "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || exit 1
  printmsg success "Homebrew is installed!"
else
  printmsg info "Homebrew is already installed"
fi
printmsg info "Installing from Brewfile..."; brew bundle --no-lock install

brew update
brew upgrade
