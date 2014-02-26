#!/usr/bin/env bash

# Do not run twice
if [ ! -f vagrant_bootstrap_webapp ]; then
    # Setting up the webapp symlink
    ln -fs /vagrant/webapp /srv/webapp

    # Running salt highstate
    salt-call state.highstate
fi

touch vagrant_bootstrap_webapp
