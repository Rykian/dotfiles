export ZPLUG_HOME=$HOME/.zplug

if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/b4b4r07/zplug.git ~/.zplug
  source $ZPLUG_HOME/init.zsh
  zplug update
else
  source $ZPLUG_HOME/init.zsh
fi
