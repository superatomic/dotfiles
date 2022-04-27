#!/usr/local/bin/zsh
# A very simple system for printed colored status messages.
# For use by dotfile install scripts.

if [ "$1" = 'info' ]; then
  color=$YELLOW
elif [ "$1" = 'action' ]; then
  color=$CYAN
elif [ "$1" = 'command' ]; then
  color="$BRIGHT$WHITE❯ $BRIGHT$CYAN"
elif [ "$1" = 'success' ]; then
  color="$BRIGHT$GREEN "
elif [ "$1" = 'error' ]; then
  color=$BRIGHT$RED
elif [ "$1" = 'prompt' ]; then
  color=$BRIGHT$MAGENTA$UNDERLINE
elif [ "$1" = '' ]; then
  $0 error "Error: Requires a message type" 1>&2
  exit 1
else
  $0 error "Error: Provided argument \`$1\` is not a valid option" 1>&2
  exit 1
fi

# shellcheck disable=SC2145  # yeah, this is a wierd case, but this is actually a good use for this behavior.
echo "$color${@:2}$NORMAL"
