#!/usr/bin/env bash
# Install the dotfiles repository to ~/.dotfiles, and install it.
git clone https://github.com/superatomic/dotfiles.git ~/.dotfiles
zsh --interactive ~/.dotfiles/install.zsh
