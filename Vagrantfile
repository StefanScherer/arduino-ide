# vi: set ft=ruby :

$script = <<SCRIPT
# switch to German keyboard layout
sudo sed -i 's/"us"/"de"/g' /etc/default/keyboard
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y console-common
sudo install-keymap de

# install Ubuntu desktop
sudo apt-get update -y
sudo apt-get install -y --no-install-recommends ubuntu-desktop gnome-panel
sudo apt-get install -y unity-lens-applications
vagrant gconftool -s /apps/gnome-terminal/profiles/Default/use_system_font -t bool false

# install Chromium  browser
sudo apt-get install -y chromium-browser

# install Arduino IDE
sudo apt-get install -y arduino arduino-core
sudo adduser vagrant dialout

# install development: 
sudo apt-get install -y vim git

gsettings set com.canonical.Unity.Launcher favorites "['nautilus-home.desktop', 'ubuntu-software-center.desktop', 'gnome-control-center.desktop', 'gnome-terminal.desktop', 'chromium-browser.desktop', 'arduino.desktop']"
# start desktop
sudo service lightdm restart
SCRIPT

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.hostname = "arduino-ide-precise64"

  config.vm.provision "shell", privileged: false, inline: $script

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024", "--cpus", "1"]
    vb.customize ["modifyvm", :id, "--usb", "on", "--clipboard", "bidirectional"]
  end

end
