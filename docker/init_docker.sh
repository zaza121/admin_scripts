#!/bin/bash

# mise a jour
sudo apt-get update

# installation de curl
sudo apt-get -y install curl

# installation de pip
sudo apt-get -y install python-pip python-dev build-essential
sudo pip install --upgrade pip

# installation de docker
sudo wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker $(whoami)

# installation de docker-compose
sudo pip install docker-compose

#installation de oh my zsh
sudo apt-get -y install zsh
sudo apt-get -y install git-core
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
