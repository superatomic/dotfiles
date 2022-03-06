#!/usr/local/bin/zsh
ln -sn ~/.dotfiles/zsh/env ~/.zshenv
ln -sn ~/.dotfiles/zsh "$XDG_CONFIG_HOME"/zsh

ln -sn ~/.dotfiles/bash/bash_profile ~/.bash_profile

ln -sn ~/.dotfiles/zsh/zshrc ~/.dotfiles/zsh/.zshrc

# Symlink all files in bin to the home bin folder.
# Credit https://zaiste.net/posts/zsh-get-filename-extension-path/.
for file in ~/.dotfiles/bin/*(*); do
  ln -sn "$file" "$BIN_HOME"/"$file:t:r";
done
