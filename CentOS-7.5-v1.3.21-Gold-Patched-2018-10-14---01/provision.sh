#!/usr/bin/bash

set -e
sudo yum install -y ansible
echo "Extracting CentOS-7.5-v1.3.21-Gold-Patched-2018-10-14---01.tar"
cd /home/centos
pwd
ls -ltr
tar -xf CentOS-7.5-v1.3.21-Gold-Patched-2018-10-14---01.tar
echo "Running build"
ansible-playbook CentOS-7.5-v1.3.21-Gold-Patched-2018-10-14---01/main-site.yml
sudo yum remove -y ansible
rm -rf CentOS-7.5-v1.3.21-Gold-Patched-2018-10-14---01 ~/CentOS-7.5-v1.3.21-Gold-Patched-2018-10-14---01.tar
