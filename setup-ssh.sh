# ssh-keygen -t rsa -b 2048
ssh-keygen -t ed25519
tr -d '\n' < ~/.ssh/id_ed25519.pub | pbcopy