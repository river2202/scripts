

## install tools
brew install --cask sourcetree
brew install --cask spark
brew install --cask xcodes
brew install --cask android-studio
brew install --cask visual-studio-code
brew install --cask rectangle
brew install --cask alfred
brew install --cask notion

echo "export PATH=$(pwd):"'$PATH' >> ~/.zshrc
echo "source $(pwd)/alias.me" >> ~/.zshrc


## Flutter
./install-flutter.sh

