#!/bin/bash

echo "Provisioning virtual machine..."

apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible -y

apt-get install language-pack-en -y