#!/bin/zsh

ln -s `pwd`/.zshrc ~/.zshrc
ln -s `pwd`/.zshrc.d ~/.zshrc.d

source ~/.zshrc

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
