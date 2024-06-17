

## install Homebrew, https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask iterm2

# install ohmyz from https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install --cask visual-studio-code
brew install --cask xcodes
brew install --cask sourcetree
brew install --cask android-studio
brew install --cask rectangle
brew install --cask alfred
brew install --cask slack
brew install --cask notion
brew install --cask zoom
brew install --cask fleet

brew install --cask google-chrome
brew install --cask slack
brew install mas # A simple command line interface for the Mac App Store.
mas install 1039633667 # Installing Irvue - Unsplash Wallpapers

brew install --cask readdle-spark
# brew install --cask parallels
brew install --cask 1password


echo "export PATH=$(pwd):"'$PATH' >> ~/.zshrc
echo "source $(pwd)/alias.me" >> ~/.zshrc

source ~/.zshrc

# install https://fvm.app/
brew tap leoafarias/fvm
brew install fvm

## Flutter
# ./install-flutter.sh

