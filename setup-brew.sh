
echo "Installing system dependencies"

if ! type "brew" > /dev/null; then
	echo "homebrew not found, installing..." 
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle
