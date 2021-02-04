
echo "Installing system dependencies"

if ! type "brew" > /dev/null; then
	echo "homebrew not found, installing..." 
    /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle
