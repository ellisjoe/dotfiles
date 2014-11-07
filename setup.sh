#!/usr/bin/env sh

# setup and pull submodules
git submodule init
git submodule update

# add my theme to the themes directory of oh-my-zsh
cp my-clean.zsh-theme oh-my-zsh/custom/themes

cp -r zsh-syntax-highlighting oh-my-zsh/custom/plugins

FILES=( gitconfig oh-my-zsh tmux.conf vim vimrc zshrc )
# link everything that isn't a script
for DF in ${FILES[*]}; do
    echo "Linking $DF"
    rm -rf ~/.$DF
    ln -s $(pwd)/$DF ~/.$DF
done

# install pathogen
cp vim-pathogen/autoload/pathogen.vim vim/autoload/
