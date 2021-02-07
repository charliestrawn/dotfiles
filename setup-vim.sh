#!/bin/bash

echo "Installing Vim Plug for neovim"
mkdir -p "$HOME/.vim"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p "$HOME/.config/nvim" && ln -svf "$PWD/init.vim" "$HOME/.config/nvim/init.vim"

echo "Installing vim plugins"
nvim +PlugInstall +qall
