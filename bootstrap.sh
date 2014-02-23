#!/usr/bin/env bash

# Do not run twice
if [ ! -f vagrant_bootstrap ]; then
    # Sets up saltmaster hostname
    echo "192.168.56.100 salt salt-master" >> /etc/hosts

    # Installs salt minion
    wget -O - http://bootstrap.saltstack.org | sudo sh

    # Sets up salt-minion id
    hn=`hostname`
    echo -n $hn > /etc/salt/minion_id
fi

touch vagrant_bootstrap
