```
# Install Homebrew (https://brew.sh/)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Oh My Zsh (https://ohmyz.sh/)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Update Oh My Zsh theme
cp my-clean.zsh-theme ~/.oh-my-zsh/themes

# Link Vim plugins
ln -sf $(pwd)/vim ~/.vim

# Link vimrc
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/vimrc ~/.vrapperrc
ln -sf $(pwd)/vimrc ~/.ideavimrc

ln -sf $(pwd)/gitconfig ~/.gitconfig
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/tmux.conf ~/.tmux.conf

# Install Solarized Colors
cd ~/git-repos
git clone https://github.com/altercation/solarized.git
cd solarized
git apply ../dotfiles/fixed-solarized-tmux.diff

# 1. Open Terminal App > Profiles > Import
# 2. Select Solarized Dark.terminal from this repo
# 3. Set as default

# Install Tmux
brew install tmux
```
