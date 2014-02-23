salt-dev-environment
====================

A development environment to test and setup Salt deployments.

#### What's it
After a vagrant up, you should end up with two virtual machines (master, minion). The master VM will have a intalled and configured salt-master and salt-minion daemons, and the minion VM will have a salt-minion daemon.

Hostname and network will be already setup by Vagrant.

The Salt minion VM will aready be connected to the master.

#### Usage
When the vagrant up finishes, connect on the master VM (vagrant ssh master) and run as root:
> \# salt '*' state.highstate

This will run a test.ping on the minion and on the master it self.

The test.ping routine is specified on the master/roots/default.sls SLS file.

#### Why?

With a simple git clone, vagrant up, you will end up with a environment that can be easily modified to build and test Salt based infrastructures.

You will be some copy/paste/edit from a full functional, multi-vm infrastructure setup, that could be easily adapted to be used on a production environment.



