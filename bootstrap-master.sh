#!/usr/bin/env bash

# Do not run twice
if [ ! -f vagrant_bootstrap_master ]; then
    # Install curl
    apt-get -y install curl

    # Installs salt master
    curl -L http://bootstrap.saltstack.org | sudo sh -s -- -M -N

    # Remeving salt configs and linking from synced folder copy
    rm /etc/salt -rf
    ln -fs /vagrant/master/etc /etc/salt

    # Master restart
    service salt-master restart
fi

touch vagrant_bootstrap_master
