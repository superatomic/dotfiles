#!/usr/local/bin/zsh
# Symlinks files into usable locations.

alias sln=~/.dotfiles/bin/sln.zsh


sln ~/.dotfiles/zsh/zshenv ~/.zshenv
mkdir -p "$ZDOTDIR"
for file in ~/.dotfiles/zsh/*; do
  sln "$file" "$ZDOTDIR"/"$file:t";
done
sln "$ZDOTDIR"/zshrc "$ZDOTDIR"/.zshrc

sln ~/.dotfiles/bash/bash_profile ~/.bash_profile


# Symlink all files in bin to the home bin folder.
# Credit https://zaiste.net/posts/zsh-get-filename-extension-path/.
mkdir -p "$BIN_HOME"
for file in ~/.dotfiles/bin/*(*); do
  sln "$file" "$BIN_HOME"/"$file:t:r";
done

sln ~/.dotfiles/config/pythonrc.py "$XDG_CONFIG_HOME"/pythonrc.py
