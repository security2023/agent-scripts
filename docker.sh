#!/bin/bash

echo "Updating the system..."
sudo yum update -y
sleep 2

echo "Installing required packages..."
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sleep 2

echo "Adding Docker repository..."
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sleep 2

echo "Installing Docker..."
sudo yum install -y docker-ce
sleep 2

echo "Starting and enabling Docker..."
sudo systemctl start docker
sudo systemctl enable docker
sleep 2

echo "Adding the current user to the 'docker' group..."
sudo usermod -aG docker $(whoami)
sleep 2

echo "Verifying Docker installation..."
docker --version
