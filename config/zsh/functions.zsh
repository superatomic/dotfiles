
tere() {
    local result=$(command tere "$@")
    [ -n "$result" ] && cd -- "$result"
}

# cdls = cd + ls
cdls() {
  cd "$1" || exit 1
  exa --classify "$1"
}
