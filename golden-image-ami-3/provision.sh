#!/usr/bin/bash

set -e
sudo yum install -y git ansible
echo "Cloning ansible playbook"
git clone https://github.com/nwanki/harden.git 
echo "Running build"
ansible-playbook harden/golden-image-ami-3/main-site.yml
sudo yum remove -y git ansible
rm -rf harden
