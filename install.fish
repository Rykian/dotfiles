#!/usr/bin/env fish

if not test -L ~/.config/fish/conf.d
  ln -s (pwd)/fish/conf.d ~/.config/fish/conf.d
end

if not test -L ~/.config/fish/fishfile
  ln -s (pwd)/fish/fishfile ~/.config/fish/fishfile
end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set required docker rbenv nvm exa
for i in $required
  type -q $i
  if test $status -ne 0
    echo "Executable '$i' is missing"
  end
end
