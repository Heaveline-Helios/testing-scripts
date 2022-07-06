#!/bin/sh
#setting up the repository
sudo apt update
sudo apt install ca-certificates curl gnupg lsb-release
#adding dockers gpg key
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#updating repository and installing docker engine
sudo apt update && sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
