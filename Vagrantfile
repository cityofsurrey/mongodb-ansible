# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define "acs" do |acs|
    acs.vm.box = "ubuntu/trusty64"
    acs.vm.hostname="asc"
    acs.vm.network "private_network", ip: "192.168.33.10"

    acs.vm.provision "shell", path: "provision.sh"
  end

  config.vm.define "master" do |master|
    master.vm.box="ubuntu/trusty64"
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.33.20"
    master.vm.network "forwarded_port", guest: 27017, host: 28017
  end

  config.vm.define "node1" do |node1|
    node1.vm.box = "ubuntu/trusty64"
    node1.vm.hostname = "node1"
    node1.vm.network "private_network", ip: "192.168.33.31"
    node1.vm.network "forwarded_port", guest: 27017, host: 2701
  end

  config.vm.define "node2" do |node2|
    node2.vm.box = "ubuntu/trusty64"
    node2.vm.hostname = "node2"
    node2.vm.network "private_network", ip: "192.168.33.32"
    node2.vm.network "forwarded_port", guest: 27017, host: 2702
  end

  config.vm.define "node3" do |node3|
    node3.vm.box = "ubuntu/trusty64"
    node3.vm.hostname = "node3"
    node3.vm.network "private_network", ip: "192.168.33.33"
    node3.vm.network "forwarded_port", guest: 27017, host: 2703
  end

end
