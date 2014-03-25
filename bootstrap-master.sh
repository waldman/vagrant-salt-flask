#!/usr/bin/env bash

# Install curl
apt-get -y install curl

# Installs salt master
curl -L http://bootstrap.saltstack.org | sudo sh -s -- -M -N

# Removing salt configs and linking from synced folder copy
rm /etc/salt -rf
ln -fs /vagrant/master/etc /etc/salt

# Setting up the roots base folder
ln -fs /vagrant/master/roots /srv/salt

# Master restart
service salt-master restart
sleep 2
service salt-minion restart
