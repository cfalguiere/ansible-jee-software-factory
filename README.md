ansible-jee-software-factory
============================

Ansible Playbook 

This playbook runs locally and installs Maven, Git, and Jenkins + Gitblit + Nexus in a Tomcat container. The script creates a tomcat account (checck group_vars for configuration).

Tested on a Precise64 box.

### Run playbook

<pre><code>$ cd playbook-sf
$ ansible-playbook -i site-inventory site.yml </code></pre>
