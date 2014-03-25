#!/usr/bin/env bash

# Setting up the webapp symlink
ln -fs /vagrant/webapp /srv/webapp

# Running salt highstate
salt-call state.highstate
