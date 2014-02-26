vagrant-salt-flask
==================

A test setup using Vagrant for VMs, Salt for Configuration management and Flask as a webapp

#### Intended Usage:
A git clone, vagrant up should (see the bug session below) leave you with two running VMs, one for salt-master, and one for the webapp.

The Flask webapp is already configured with production ready config files (It's running through Nginx/Gunicorn/Supervisord).

After the setup, access the http://192.168.56.101/ URL. It will show the flask app siting on the webapp folder.


#### Bugs:
- For some reason the comunication between the VMs is not established automatically (this could be a problem with my own setup). To fix it:

From the master machine:
> \# ping 192.168.56.101

From the webapp machine:
> \# ping 192.168.56.100

After that, run from the webapp machine:
> \# salt-call state.highstate

This should install and setup every thing.

- Ubuntu bug 1021700 - https://bugs.launchpad.net/ubuntu/+source/supervisor/+bug/1021700
The instruction service supervisor restart doesn't work on Ubuntu 12.04.

The workaround for this setup is to connect on the webapp node, and after the salt-call described above (or after a sucessfull vagrant up in case the aforementined bug doesn't occur) run the following sequence:
> \# service supervisor stop
> \# service supervisor start
