# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
config.vm.provider "virtualbox" do |vb|
vb.name = "VagrantBU"
vb.gui = false
vb.memory = "2048"
vb.cpus = 2
end
config.vm.hostname = "VagrantBU"
config.vm.synced_folder ".", "/home/vagrant/code",
owner: "www-data", group: "www-data"

config.vm.network "forwarded_port", guest: 80, host: 80
config.vm.network "forwarded_port", guest: 8888, host: 8888
config.vm.network "private_network", ip: "192.168.1.130"
config.vm.provision "shell", path: "update.sh"
config.vm.provision "shell", path: "Wget.sh"
config.vm.provision "shell", path: "Vim.sh"
config.vm.provision "shell", path: "Htop.sh"
config.vm.provision "shell", path: "Tmuh.sh"
config.vm.provision "shell", path: "php.sh"
config.vm.provision "shell", path: "Nginix.sh"
config.vm.provision "shell", path: "Apache.sh"
# config.vm.provision "shell", path: "name.sh"
# config.vm.provision "shell", path: "php_new.sh"

end
