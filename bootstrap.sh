#!/bin/bash

echo "Installing dotfiles."

set -e

# Check if macOs Command Line Tools is installed.
xcode-select -p 1>/dev/null || xcode-select --install

filesToLink=(
    "aliases" 
    "functions" 
    "zshrc" 
    "p10k.zsh" 
    "vimrc"
)

if [ -d "$HOME/dotfiles.old" ]; then
    echo "Cowardly refusing to replace old backup"
    exit 1
else
    echo "Backing up old dotfiles"
    mkdir -p "$HOME/dotfiles.old"
    for file in "${filesToLink[@]}"
    do
        if [[ -f "$HOME/.$file" ]]; then
            cp "$HOME/.$file" "$HOME/dotfiles.old/"
        fi
    done
fi

echo "Linking files"
for file in "${filesToLink[@]}"
do
    echo "Linking $file"
    ln -svf "$PWD/$file" "$HOME/.$file"
done

if [ ! -f "$HOME/.secrets" ]; then
    touch "$HOME/.secrets"
fi

./setup-zsh.sh
./setup-brew.sh
./setup-vim.sh

echo "Attempting to set Terminal Font"
osascript -e "tell application \"Terminal\" to set the font name of window 1 to \"MesloLGSDZ Nerd Font\""

$(brew --prefix)/opt/python/libexec/bin/pip install -Ur dev-machine-reqs.txt


echo "Done. You may need to source $HOME/.zshrc"
