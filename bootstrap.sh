#!/bin/bash

echo "Installing dotfiles."

set -e

# Check if macOs Command Line Tools is installed.
xcode-select -p 1>/dev/null || xcode-select --install

filesToLink=("aliases" "functions" "zshrc" "p10k.zsh" "vimrc")

echo "Backing up old dotfiles"
if [ -d "$HOME/dotfiles.old" ]; then
    echo "Cowardly refusing to replace old backup"
    exit 1
else
    mkdir -p "$HOME/dotfiles.old"
    for file in "${filesToLink[@]}"
    do
        if [[ -f "$HOME/.$file" ]]; then
            cp "$HOME/.$file" "$HOME/dotfiles.old/"
        fi
    done
fi

exit 1

echo "Linking files"
for file in "${filesToLink[@]}"
do
    echo "Linking $file"
    ln -svf "$PWD/$file" "$HOME/.$file"
done

./setup-zsh.sh
./setup-brew.sh
./setup-vim.sh

/usr/local/opt/python/libexec/bin/pip install -Ur dev-machine-reqs.txt


echo "Done. You may need to source $HOME/.zshrc"
