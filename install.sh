#!/usr/bin/env bash

set -eo pipefail

# Install homebrew
which brew > /dev/null || {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

brew update

# Install the CLI goodies
brew install vim
brew install zsh
brew install tmux
brew install tig 
brew install python
brew install python3

# Install the GUI apps
brew cask install iterm2
brew cask install alfred
brew cask install google-chrome
brew cask install slack
brew cask install spotify
brew cask install caffeine

# See if powerline fonts are installed
ls /Users/charliestrawn/Library/Fonts | grep Powerline > /dev/null || { 
	git clone https://github.com/powerline/fonts.git /tmp/fonts --depth=1
	cd /tmp/fonts && ./install.sh
	rm -rf /tmp/fonts
}
cd $HOME

# vim stuff!
# junegunn's plug plugin manager kicks ass
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# TODO: make these files an array and check if they exist
declare -a files=(
   vimrc
   antigen.zsh
   aliases
   zshrc
)

for f in "$files[@]"
do
    if [ ! -f $HOME/.$f ]; then
        ln -s $PWD/$f $HOME/.$f
    fi
done

vim +PlugInstall +qall
