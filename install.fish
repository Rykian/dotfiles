#!/usr/bin/env fish

if not test -d ~/.config/fish/conf.d
  ln -s (pwd)/fish/conf.d ~/.config/fish/conf.d
end

if not test -d ~/.config/omf
  ln -s (pwd)/omf ~/.config/omf
end

if test -z $OMF_CONFIG
  curl -L https://get.oh-my.fish | fish
end
omf install

set required fzy docker rbenv nvm exa
for i in $required
  type -q $i
  if test $status -ne 0
    echo Executable \'$i\' is missing
  end
end
