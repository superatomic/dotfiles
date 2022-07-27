function mkcd --wraps=mkdir
  mkdir $argv
  cd $argv
end
