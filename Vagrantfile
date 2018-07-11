# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.synced_folder ".", "/home/faisal/"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 1
  end

  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  #config.vm.provision "shell", path: "provisioning.sh"

end

