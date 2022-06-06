source "$ZDOTDIR"/zshenv

source "$XDG_DATA_HOME"/iterm2_shell_integration.zsh


plugins=(zsh-autosuggestions colored-man-pages)

source "$ZSH"/oh-my-zsh.sh

# Autocomplete
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval $(thefuck --alias)

# * Heroku Autocomplete setup
# * We can't run this until the heroku cli implements a fix to https://github.com/heroku/cli/issues/1956.
# * Until then, this will be commented out.
# HEROKU_AC_ZSH_SETUP_PATH=/Users/Ethan/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# Must go at the end!
eval "$(starship init zsh)"
