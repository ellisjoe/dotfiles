#!/usr/bin/env sh

# setup and pull submodules
git submodule init
git submodule update

# add my theme to the themes directory of oh-my-zsh
cp my-clean.zsh-theme oh-my-zsh/themes

FILES=( gitconfig oh-my-zsh tmux.conf vim vimrc zshrc )
# link everything that isn't a script
for DF in ${FILES[*]}; do
    echo "Linking $DF"
    rm -rf ~/.$DF
    ln -s $(pwd)/$DF ~/.$DF
done

