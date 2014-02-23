salt-dev-environment
====================

Vagrant settings to start a development environment to test and setup Salt deployments.

This is a work in progress.

DONE
=====
In current state, a vagrant up will setup two virtual machines, install salt master/minion and replace (symlink) the salt configs on the master box for the content of the master/etc folder.

TODO
====
Setup Salt master base folder (roots) and add a simple top.sls file.


