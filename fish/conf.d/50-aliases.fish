alias ls='exa -l --group-directories-first --color=auto --icons --no-permissions --no-user'
alias ll='exa -lahF --group-directories-first --color=auto --icons'

alias l="/bin/ls -1a"
alias la="ll -a"
alias lt="ll -s created"
alias lc="ll -s created"
alias lu="ll -s accessed"
alias lx="ll -s Extension"
alias lk="ll -s size -r"


#if [[ $OSTYPE == *darwin* ]]
#then
#  alias typora="open -a typora"
#fi

abbr --global dc 'docker compose'
abbr --global dcl 'docker compose logs --tail 0 -f'
abbr --global k kubectl
abbr --global rn 'npx react-native'
abbr --global rn-reset-deps 'rm -rf node_modules && rm -rf ios/Pods && yarn install && cd ios && pod install && cd ..'
abbr --global uuid 'uuidgen | tr "[:upper:]" "[:lower:]"'
