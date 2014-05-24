#!/usr/bin/env sh

# setup and pull submodules
git submodule init
git submodule update

# add my theme to the themes directory of oh-my-zsh
cp my-clean.zsh-theme oh-my-zsh/themes

# link everything that isn't a script
for DF in $(ls | grep -v "\.sh"); do
    rm -rf ~/.$DF
    ln -s $(pwd)/$DF ~/.$DF
done

