for file in ~/.zshrc.d/*.zsh;
do
  # typeset -F SECONDS=0
  source $file
  # echo $SECONDS $file
done
