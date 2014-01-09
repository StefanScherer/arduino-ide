# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT
sudo apt-get update -y
sudo apt-get install -y --no-install-recommends ubuntu-desktop
sudo apt-get install -y unity-lens-applications
sudo apt-get install -y arduino arduino-core
sudo apt-get install -y vim git
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provision "shell", inline: $script
  config.vm.hostname = "arduino-ide-precise64"

  config.vm.provider :virtualbox do |vb|
     vb.gui = true
     # Use VBoxManage to customize the VM. For example to change memory:
     vb.customize ["modifyvm", :id, "--memory", "1024", "--cpus", "1"]
   end
  #
  # View the documentation for the provider you're using for more
  # information on available options.

end
