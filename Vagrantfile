# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# the install script to provision the Ubuntu box with minimal desktop and tools
$script = <<SCRIPT
sudo apt-get update -y
sudo apt-get install -y --no-install-recommends ubuntu-desktop gnome-panel
sudo apt-get install -y unity-lens-applications
sudo apt-get install -y arduino arduino-core
sudo adduser vagrant dialout
sudo apt-get install -y vim git
sudo reboot
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.hostname = "arduino-ide-precise64"

  config.vm.provision "shell", inline: $script

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024", "--cpus", "1"]
  end

end
