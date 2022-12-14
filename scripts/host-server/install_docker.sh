#!/bin/bash
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update -y
sudo apt-cache policy docker-ce
sudo apt-get -y install docker-ce
sudo usermod -aG docker $USER
newgrp docker
docker --version