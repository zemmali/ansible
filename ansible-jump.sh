#!/bin/bash
apt-add-repository ppa:ansible/ansible
apt-get update
locale-gen pl_PL pl_PL.UTF-8
dpkg-reconfigure locales
apt-get -y dist-upgrade

echo "192.168.50.40 web1" >> /etc/hosts
echo "192.168.50.41 jump" >> /etc/hosts

#Ansible installation
apt-get install -y ansible

cp -avr /vagrant/first_playbook /home/vagrant/
find  /home/vagrant/first_playbook -type d -exec chmod 755 {} \;
find  /home/vagrant/first_playbook -type f -exec chmod 644 {} \;
