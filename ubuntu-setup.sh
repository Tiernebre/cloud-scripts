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

# Docker Setup
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Test Docker
sudo docker run hello-world
