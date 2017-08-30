alias ls=exa
compdef ls=exa

alias l=ls -1

alias dc=docker-compose
compdef dc=docker-compose

function dcl() {
  if [ -n "$1" ]
  then
    docker-compose logs --tail 0 -f "$1"
  else
    docker-compose logs --tail 0 -f
  fi
}
alias dcl=dcl
