#!/bin/bash

# start desktop
echo "autologin-user=vagrant" | sudo tee -a /etc/lightdm/lightdm.conf
sudo service lightdm restart
sleep 10
DISPLAY=:0.0 gsettings set com.canonical.Unity.Launcher favorites "['nautilus-home.desktop', 'ubuntu-software-center.desktop', 'gnome-control-center.desktop', 'gnome-terminal.desktop', 'chromium-browser.desktop', 'arduino.desktop']"
sudo service lightdm restart
