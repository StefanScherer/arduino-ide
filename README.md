# arduino-ide

Easy start developing with Arduino IDE running on Ubuntu 12.04 VM.

# Installation
You will need [Vagrant](http://vagrantup.com) and [VirtualBox](http://virtualbox.org) to install the Ubuntu Box. It will then install the Arduino IDE inside and some other tools you may need to start developing.

## Preparing your Windows Host
If you do not already have Vagrant and VirtualBox installed, you may use following script that will do this for you. I prefer [Chocolatey](http://chocolatey.org) to install all my software on Windows machines. Open a command shell or type **WindowsKey+R** and copy and paste following command

    @powershell -NoProfile -ExecutionPolicy unrestricted -Command "((new-object net.webclient).DownloadFile('https://raw.github.com/StefanScherer/arduino-ide/install/windows.bat', '%Temp%\windows.bat'))" && %Temp%\windows.bat

Enter the admin user and password when prompted in UAC dialogs. It will install the DotNet runtime 4 which is needed by Chocolatey, then VirtualBox and Vagrant and also curl to download further files from this repo.

## Preparing the Arduino IDE Ubuntu box
The Arduino IDE will be installed into an Ubuntu 12.04 box. Just clone this repo and call vagrant up with the following commands:

    git clone https://github.com/StefanScherer/arduino-ide.git
    cd arduino-ide
    vagrant up

# License
MIT License

# Author
Stefan Scherer
