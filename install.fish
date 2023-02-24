#!/usr/bin/env fish

if test -d ~/.config/fish/conf.d/
    cp -R ~/.config/fish/conf.d/* (pwd)/fish/conf.d/
    rm -rf ~/.config/fish/conf.d
end
ln -s (pwd)/fish/conf.d ~/.config/fish/

if not test -L ~/.config/fish/fishfile
    ln -s (pwd)/fish/fishfile ~/.config/fish/fishfile
end

set plugins (cat (pwd)/fish/fishfile | string split split0)
set -l plugins_to_install
for i in $plugins
    set -a plugins_to_install (string replace ' ' '' $i)
end

if not functions -q fisher
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    fisher install $to_install
end

set required docker exa asdf
for i in $required
    type -q $i
    if test $status -ne 0
        echo "Executable '$i' is missing"
    end
end
