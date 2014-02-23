# -*- mode: ruby -*-
# vi: set ft=ruby :

#
# Vagrant file for Salt development.
#

Vagrant.configure("2") do |config|
  # Salt-master box
  config.vm.define "master" do |master|
    # Box settings
    master.vm.box = "precise32"
    master.vm.box_url = "http://files.vagrantup.com/precise32.box"
  end

  # Salt-minion box
  config.vm.define "minion" do |minion|
    # Box settings
    minion.vm.box = "precise32"
    minion.vm.box_url = "http://files.vagrantup.com/precise32.box"
  end
end
