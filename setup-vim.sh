
echo "Installing Vim Plug for neovim"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# TODO: back these up first
ln -svf $PWD/init.vim $HOME/.config/nvim/init.vim
ln -svf $PWD/vimrc $HOME/.vimrc

echo "Installing vim plugins"
vim +PlugInstall +qall
