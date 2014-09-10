#!/bin/bash

sudo apt-get update


sudo apt-get  --assume-yes  install python-software-properties
sudo add-apt-repository -y ppa:rquillo/ansible # (attention confirmation)

sudo apt-get update
sudo apt-get  --assume-yes  install ansible -V

#sudo apt-get dist-upgrade

exit