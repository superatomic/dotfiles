function ls --wraps='exa --classify' --description 'alias ls exa --classify'
  exa --classify $argv; 
end
