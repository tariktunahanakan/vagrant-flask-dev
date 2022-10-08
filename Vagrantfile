# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.provision "docker" do |d|
    d.run "349190//vagrant-flask-dev:latest",
      args: "-p 8080:5000"
  end
end
