#!/bin/bash

sudo apt-get upgrade

# Install OpenJDK
sudo apt install openjdk-8-jdk -y

# Install Ansible
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update && sudo apt-get install jenkins -y

sudo service jenkins restart
