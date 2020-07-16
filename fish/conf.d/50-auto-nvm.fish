set NVMRC_USED 0

function __switch_nvm
  set splitted_path (string split / $PWD)
  set nvm_present 0

  for i in (seq (count $splitted_path))
    set to_test (string join / $splitted_path[1..$i+1]).nvmrc
    if test -e $to_test
      set nvm_present $to_test
    end
  end

  if test "$nvm_present" != 0 && test "$nvm_present" != "$NVMRC_USED"
    set NVMRC_USED "$nvm_present"
    nvm use > /dev/null
  else if test "$NVMRC_USED" != 0 && test "$nvm_present" = 0
    set NVMRC_USED 0
    nvm use default > /dev/null
  end
end

# Check if .nvm is present on load
__switch_nvm

function __check_nvm --on-variable PWD --description 'Check if there is a .nvm file on directory change'
  __switch_nvm
end
