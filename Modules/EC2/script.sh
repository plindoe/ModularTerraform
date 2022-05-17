#!/bin/bash

sudo apt update

sudo apt install python3-pip -y

sudo apt install docker.io -y

sudo apt install docker-compose -y

sudo usermod -aG docker $USER

sudo chown $USER /var/run/docker.sock

sudo apt update

sudo apt install software-properties-common

sudo add-apt-repository --yes --update ppa:ansible/ansible

sudo apt install ansible

sudo git clone https://github.com/nathanforester/BirthDateAppFlask.git