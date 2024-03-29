#!/usr/local/bin/zsh
# Symlinks files into usable locations.

alias sln=~/.dotfiles/bin/sln.zsh
alias printmsg=~/.dotfiles/bin/printmsg.zsh

printmsg action "Symlinking files..."

mkdir -p "$ZDOTDIR"
sln "$ZDOTDIR/zshenv" "$ZDOTDIR/.zshenv"
sln "$ZDOTDIR/zshrc" "$ZDOTDIR/.zshrc"

sln ~/.dotfiles/bash/bash_profile ~/.bash_profile


# Symlink all files in bin to the home bin folder.
# Credit https://zaiste.net/posts/zsh-get-filename-extension-path/.
mkdir -p "$BIN_HOME"
for file in ~/.dotfiles/bin/*(*); do
  sln "$file" "$BIN_HOME/$file:t:r";
done

# Symlink all files in config into $XDG_CONFIG_HOME
dotfiles_home=~/.dotfiles/config
for file in "$dotfiles_home"/**/*(.); do
  sln "$file" "$XDG_CONFIG_HOME${file#$dotfiles_home}";
done

printmsg success "Symlinked files successfully"
