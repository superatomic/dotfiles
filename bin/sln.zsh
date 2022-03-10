#!/usr/local/bin/zsh
# Symbolic links if the target exists or is a symlink, otherwise errors.
if [[ -h $2 || ! -e $2 ]]; then
  ln -sfn "$1" "$2"
else
  printf "${RED}%s: %s: File exists${NORMAL}\n" "$0" "$2" 1>&2
  exit 1
fi
