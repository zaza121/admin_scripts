#!/bin/bash

# mise a jour
sudo apt-get update

# installation de curl
sudo apt-get -y install curl

# installation de pip
sudo apt-get -y install python-pip python-dev build-essential
sudo pip install --upgrade pip

# installation de docker
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce
sudo usermod -aG docker $(whoami)

# installation de docker-compose
sudo pip install docker-compose

#installation de oh my zsh
sudo apt-get -y install zsh
sudo apt-get -y install git-core
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
