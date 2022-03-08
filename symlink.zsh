#!/usr/local/bin/zsh
ln -sn ~/.dotfiles/zsh/zshenv ~/.zshenv
mkdir -p "$ZDOTDIR"
for file in ~/.dotfiles/zsh/*; do
  ln -sn "$file" "$ZDOTDIR"/"$file:t";
done
ln -sn "$ZDOTDIR"/zshrc "$ZDOTDIR"/.zshrc

ln -sn ~/.dotfiles/bash/bash_profile ~/.bash_profile


# Symlink all files in bin to the home bin folder.
# Credit https://zaiste.net/posts/zsh-get-filename-extension-path/.
mkdir -p "$BIN_HOME"
for file in ~/.dotfiles/bin/*(*); do
  ln -sn "$file" "$BIN_HOME"/"$file:t:r";
done

ln -sn ~/.dotfiles/config/pythonrc.py "$XDG_CONFIG_HOME"/pythonrc.py
