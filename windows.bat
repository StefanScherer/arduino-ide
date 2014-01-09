@echo off
echo Ensuring .NET 4.0 is installed
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.github.com/StefanScherer/arduino-ide/install/InstallNet4.ps1'))"
echo Installing Chocolatey
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

where cinst
if ERRORLEVEL 1 goto set_chocolatey
goto inst
:set_chocolatey
set ChocolateyInstall=%SystemDrive%\Chocolatey
set PATH=%PATH%;%ChocolateyInstall%\bin
:inst

call cinst virtualbox
call cinst vagrant
set PATH=%PATH%;%ProgramFiles%\Oracle\VirtualBox
set PATH=%PATH%;%SystemDrive%\hashicorp\vagrant\bin
cd /D %USERPROFILE%\Documents
mkdir arduino-ide
cd arduino-ide
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "((new-object net.webclient).DownloadFile('https://raw.github.com/StefanScherer/arduino-ide/master/Vagrantfile', 'Vagrantfile'))"
call vagrant up
