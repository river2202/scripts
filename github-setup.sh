

# github
# setup ssh and GPG keys

# ssh
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
ssh-keygen -t ed25519 -C "river2202@gmail.com"
eval "$(ssh-agent -s)"
touch ~/.ssh/config

cat <<EOF > ~/.ssh/config
Host github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
EOF

ssh-add --apple-use-keychain ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub
open https://github.com/settings/ssh/new


#gpg 
open https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key
brew install gnupg
gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
open https://github.com/settings/gpg/new



