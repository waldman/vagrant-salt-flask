#!/usr/bin/env bash

# Sets up saltmaster hostname
echo "192.168.56.100 salt salt-master" >> /etc/hosts

# Installs salt minion
wget -O - http://bootstrap.saltstack.org | sudo sh

# Sets up salt-minion id
hn=`hostname`
echo -n $hn > /etc/salt/minion_id
