ansible-jee-software-factory
============================

This playbook runs locally and installs Maven, Git, and Jenkins + Gitblit + Nexus in a Tomcat container. 
The script creates a tomcat account (checck group_vars for configuration).
You may change variables and download paths in configuration files lying in groups_vars and in jee-server/vars.

It is intended to be basic demo script.
User is created with sudo ALL and NO password option. Password is the same as the account.
This is presummably not was you want to do on a production server.

Please feel free to adapt this script to you needs and contribute if you mind.

This playbook has been tested on a Precise64 box.

Prerequisites : Ansible, Ubuntu (vagrant image precise64)

### Run playbook

Login to the server 

<pre><code>$ cd playbook-sf
$ ansible-playbook -i site-inventory site.yml </code></pre>

Restart of the server when jenkins is installed may take a while.

### Remote execution

This playbook is configured to run locally. However it is a simplified version of a playbook which was used as a remote playbook. 
To turn this playbook into a remote playbook remote connection: local and add a remote user. 
Depending on you ssh configuration, you may have to add some key to the user created in the playbook.


<pre><code>- name: ssh config for tomcat
  authorized_key: user={{ service_name }} key="{{ lookup('file', '/home/vagrant/.ssh/id_rsa.pub') }}"</code></pre>

### Ansible

[Ansible](http://www.ansible.com/home)
