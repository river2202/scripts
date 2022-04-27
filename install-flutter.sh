
## Flutter
FLUTTER_DIR=~/.flutter

mkdir -p ${FLUTTER_DIR}
git clone https://github.com/flutter/flutter.git ${FLUTTER_DIR} -b stable

echo "export PATH=$FLUTTER_DIR/bin:"'$PATH' >> ~/.zshrc

brew install cocoapods

which flutter
flutter precache
flutter doctor
