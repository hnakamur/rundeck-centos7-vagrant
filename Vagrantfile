# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"

  config.vm.network "private_network", ip: "192.168.33.30"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cpus = 2
  end

  config.vm.provision "shell", path: "setup_centos7.sh"
  config.vm.provision "shell", path: "setup_rundeck.sh"
end
