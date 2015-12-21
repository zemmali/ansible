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

Execute below command in /home/vagrant directory:

> ansible-playbook -i first_playbook/inventories/dev -K first_playbook/first_playbook.yml -k

>SSH password: vagrant

>SUDO password[defaults to SSH password]: <enter>

playbookscaffold.sh script can be use to deploy folders for ansible from scratch.

vagrant@jump:~$ tree
.
└── first_playbook
    ├── files
    ├── first_playbook.yml
    ├── group_vars
    │   └── dev
    │       ├── main.yml
    │       ├── nginx.yml
    │       ├── users.yml
    │       └── vhosts.yml
    ├── host_vars
    │   ├── dev
    │   ├── prd
    │   └── uat
    ├── inventories
    │   ├── dev
    │   ├── prd
    │   └── uat
    └── roles
        ├── common
        │   ├── defaults
        │   │   └── main.yml
        │   ├── files
        │   ├── handlers
        │   │   └── main.yml
        │   ├── meta
        │   │   └── main.yml
        │   ├── README.md
        │   ├── tasks
        │   │   ├── create_users.yml
        │   │   ├── install_packages.yml
        │   │   └── main.yml
        │   ├── templates
        │   └── vars
        │       └── main.yml
        └── nginx
            ├── defaults
            │   └── main.yml
            ├── files
            ├── handlers
            │   └── main.yml
            ├── meta
            │   └── main.yml
            ├── README.md
            ├── tasks
            │   ├── configure_vhosts.yml
            │   ├── configure.yml
            │   ├── install.yml
            │   └── main.yml
            ├── templates
            │   ├── nginx.j2
            │   └── vhosts.j2
            └── vars
                └── main.yml

26 directories, 27 files
