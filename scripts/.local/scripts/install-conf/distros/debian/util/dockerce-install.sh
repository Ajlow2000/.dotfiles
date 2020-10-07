#!/bin/bash

# This script installs the latest version of docker-ce from their repos

# Uninstall old versions/dependencies
sudo apt-get remove docker docker-engine docker.io

# Setup repo
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker/com/linux/debian \
    $(lsb_release -cs) \
    stable"

# Install docker-ce

sudo apt-get update
sudo apt-get install docker-ce

