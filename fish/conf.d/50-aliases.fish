alias ls=exa

alias l="ls -1a"
alias la="ll -a"
alias lt="ll -s created"
alias lc="ll -s created"
alias lu="ll -s accessed"
alias lx="ll -s Extension"
alias lk="ll -s size -r"

alias dc=docker-compose

#if [[ $OSTYPE == *darwin* ]]
#then
#  alias typora="open -a typora"
#fi

abbr --global dcl 'docker-compose logs --tail 0 -f'
abbr --global k 'kubectl'
