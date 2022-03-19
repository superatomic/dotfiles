#!/usr/local/bin/zsh
# Symlinks files into usable locations.

alias sln=~/.dotfiles/bin/sln.zsh
alias printmsg=~/.dotfiles/bin/printmsg.zsh

printmsg action "Symlinking files..."

sln ~/.dotfiles/zsh/zshenv ~/.zshenv
mkdir -p "$ZDOTDIR"
for file in ~/.dotfiles/zsh/*; do
  sln "$file" "$ZDOTDIR/$file:t";
done
sln "$ZDOTDIR/zshrc" "$ZDOTDIR/.zshrc"

sln ~/.dotfiles/bash/bash_profile ~/.bash_profile


# Symlink all files in bin to the home bin folder.
# Credit https://zaiste.net/posts/zsh-get-filename-extension-path/.
mkdir -p "$BIN_HOME"
for file in ~/.dotfiles/bin/*(*); do
  sln "$file" "$BIN_HOME/$file:t:r";
done

# Symlink all files in config into $XDG_CONFIG_HOME
for file in ~/.dotfiles/config/*; do
  sln "$file" "$XDG_CONFIG_HOME/$file:t";
done

printmsg success "Symlinked files successfully"
