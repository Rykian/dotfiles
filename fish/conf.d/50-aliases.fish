alias ls=exa

alias l="ls -1a"
alias la="ll -a"
alias lt="ll -s created"
alias lc="ll -s created"
alias lu="ll -s accessed"
alias lx="ll -s Extension"
alias lk="ll -s size -r"

alias dc=docker-compose

function dcl
  if test -n $argv
    docker-compose logs --tail 0 -f "$argv"
  else
    docker-compose logs --tail 0 -f
  end
end

alias dcl=dcl

#if [[ $OSTYPE == *darwin* ]]
#then
#  alias typora="open -a typora"
#fi
