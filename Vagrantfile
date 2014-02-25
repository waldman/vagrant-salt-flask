# -*- mode: ruby -*-
# vi: set ft=ruby :

#
# Vagrant file for Salt development.
#

Vagrant.configure("2") do |config|
  # General provisioning
  config.vm.provision :shell, :path => "bootstrap.sh"
  
  # Salt-master box
  config.vm.define "master" do |master|
    # Box settings
    master.vm.box = "precise32"
    master.vm.box_url = "http://files.vagrantup.com/precise32.box"

    # Hostname settings
    master.vm.hostname = "salt-master"

    # Network settings
    master.vm.network :private_network, ip: "192.168.56.100"

    # Salt master provision
    master.vm.provision :shell, :path => "bootstrap-master.sh"
  end

  # Salt-webapp box
  config.vm.define "webapp" do |webapp|
    # Box settings
    webapp.vm.box = "precise32"
    webapp.vm.box_url = "http://files.vagrantup.com/precise32.box"

    # Hostname settings
    webapp.vm.hostname = "webapp"

    # Network settings
    webapp.vm.network :private_network, ip: "192.168.56.101"
  end
end
