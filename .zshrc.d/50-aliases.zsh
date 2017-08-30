alias ls=exa

alias l="ls -1a"
alias la="ll -a"
alias lt="ll -s created"
alias lc="ll -s created"
alias lu="ll -s accessed"
alias lx="ll -s Extension"
alias lk="ll -s size -r"

alias dc=docker-compose

function dcl() {
  if [ -n "$1" ]
  then
    docker-compose logs --tail 0 -f "$1"
  else
    docker-compose logs --tail 0 -f
  fi
}
alias dcl=dcl
