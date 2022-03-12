
# cdls = cd + ls
cdls() {
  cd "$1"
  exa --classify "$1"
}
