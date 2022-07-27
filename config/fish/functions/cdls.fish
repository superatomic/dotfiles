function cdls --wraps=cd
  cd $argv || exit 1;
  ls
end
