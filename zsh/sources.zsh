# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source "$XDG_DATA_HOME"/iterm2_shell_integration.zsh

# Powerlevel
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

plugins=(zsh-autosuggestions colored-man-pages)

source "$ZSH"/oh-my-zsh.sh

# Autocomplete
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ ! -f "$XDG_CONFIG_HOME"/p10k.zsh ]] || source "$XDG_CONFIG_HOME"/p10k.zsh

eval $(thefuck --alias)

# * Heroku Autocomplete setup
# * We can't run this until the heroku cli implements a fix to https://github.com/heroku/cli/issues/1956.
# * Until then, this will be commented out.
# HEROKU_AC_ZSH_SETUP_PATH=/Users/Ethan/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;