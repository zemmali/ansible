# Ansible Lab

Vagrant machines with some basic Ansible playbooks.

## How to use:

> vagrant up

to bring up both machines (ansible and testing)

> vagrant ssh jump

to ssh on jump server, where playbooks are located.

Playbooks are located in **/vagrant/home/first_playbook/** directory.

To use ansible playbooks:

> ssh web1  

(just to add key to .ssh/known_hosts)

> ansible-playbook -i first_playbook/inventories/dev -K first_playbook/first_playbook.yml -k

>SSH password: vagrant

>SUDO password[defaults to SSH password]: <enter>
