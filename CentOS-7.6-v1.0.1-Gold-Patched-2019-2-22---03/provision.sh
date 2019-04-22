#!/usr/bin/bash

set -e
sudo yum install -y ansible
echo "Extracting CentOS-7.6-v1.0.1-Gold-Patched-2019-2-22---03.tar"
cd /home/centos
pwd
ls -ltr
tar -xf CentOS-7.6-v1.0.1-Gold-Patched-2019-2-22---03.tar
echo "Running build"
ansible-playbook CentOS-7.6-v1.0.1-Gold-Patched-2019-2-22---03/main-site.yml
sudo yum remove -y ansible
rm -rf CentOS-7.6-v1.0.1-Gold-Patched-2019-2-22---03 ~/CentOS-7.6-v1.0.1-Gold-Patched-2019-2-22---03.tar
