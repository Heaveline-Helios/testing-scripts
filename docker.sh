#!/bin/sh
apt update
apt install ca-certificates curl gnupg lsb-release
sleep 1
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sleep 1
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sleep 1
apt update
apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sleep 1
docker run hello-world
echo "Docker is installed!"