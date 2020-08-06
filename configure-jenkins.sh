#!/bin/bash

sudo apt-get upgrade -y

# Install OpenJDK
sudo apt install openjdk-8-jdk -y

# Install new signing keys
wget -qO - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update 

sudo apt-get install jenkins -y

sudo service jenkins restart
