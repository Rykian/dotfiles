set NVM_USED 0

function __check_nvm --on-variable PWD --description 'Check if there is a .nvm file'
  set splitted_path (string split / $PWD)
  set nvm_present 0

  # echo (string join / $splitted_path[1..3])
  for i in (seq (count $splitted_path))
    if test -e (string join / $splitted_path[1..$i+1]).nvmrc
      set nvm_present 1
    end
  end

  if test "$nvm_present" -eq 1
    set NVM_USED 1
    nvm use
  else if test "$NVM_USED" -eq 1
    set NVM_USED 0
    nvm use default
  end
end
