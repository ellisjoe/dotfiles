#!/usr/bin/env sh

# setup and pull submodules
git submodule init
git submodule update

# add my theme to the themes directory of oh-my-zsh
cp my-clean.zsh-theme oh-my-zsh/custom/themes

cp -r zsh-syntax-highlighting oh-my-zsh/custom/plugins

# link all config files
FILES=( gitconfig oh-my-zsh tmux.conf vim vimrc zshrc )
for DF in ${FILES[*]}; do
    echo "Linking $DF"
    rm -rf ~/.$DF
    ln -s $(pwd)/$DF ~/.$DF
done

ln -sf $(pwd)/vimrc ~/.vrapperrc

# install pathogen
cp vim-pathogen/autoload/pathogen.vim vim/autoload/
