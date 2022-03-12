
# cdl = cd + ls
cdl() {
  cd "$1"
  exa --classify "$1"
}
