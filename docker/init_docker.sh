#!/bin/bash

# Mise a jour
sudo apt-get update

# Installation de curl
sudo apt-get install curl

# Installation de pip
sudo apt-get install python-pip python-dev build-essential
sudo pip install --upgrade pip

# Installation de oh my zsh
sudo apt-get install zsh
sudo apt-get install git-core
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Installation de docker
sudo wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker $(whoami)

# Installation de docker-compose
sudo pip install docker-compose

# Permet d'exécuter les commandes docker sans sudo
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
