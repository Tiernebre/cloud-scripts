#!/bin/sh

sudo apt-get update
sudo apt-get upgrade

sudo apt install curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

echo '. $HOME/.asdf/asdf.sh\n' >> ~/.bashrc
echo '. $HOME/.asdf/completions/asdf.bash\n' >> ~/.bashrc

source ~/.bashrc

asdf plugin-add nodejs
asdf plugin-add pnpm