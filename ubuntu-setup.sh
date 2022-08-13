#!/bin/sh

sudo apt-get update
sudo apt-get upgrade

sudo apt install curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

cat '. $HOME/.asdf/asdf.sh\n' >> $HOME/.bashrc
cat '. $HOME/.asdf/completions/asdf.bash\n' >> $HOME/.bashrc

asdf plugin-add nodejs
asdf plugin-add pnpm
