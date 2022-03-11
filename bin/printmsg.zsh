#!/usr/local/bin/zsh
# A very simple system for printed colored status messages.
# For use by dotfile install scripts.

if [ "$1" = 'info' ]; then
  color=$YELLOW
elif [ "$1" = 'action' ]; then
  color=$CYAN
elif [ "$1" = 'success' ]; then
  color=$GREEN
elif [ "$1" = 'error' ]; then
  color=$BRIGHT$RED
elif [ "$1" = '' ]; then
  $0 error "Error: Requires a message type" 1>&2
  exit 1
else
  $0 error "Error: Provided argument \`$1\` is not a valid option" 1>&2
  exit 1
fi

printf "%s%s%s\n" "$color" "$2" "$NORMAL"