function ls --wraps='exa --classify --git' --description 'alias ls exa --classify --git'
  exa --classify --git $argv; 
end
