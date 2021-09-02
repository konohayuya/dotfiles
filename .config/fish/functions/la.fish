# Defined in - @ line 1
function la --wraps='exa -laG' --description 'alias la=exa -laG'
  exa -laGh --group --icons $argv;
end
