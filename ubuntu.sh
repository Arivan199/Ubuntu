#!/bin/bash
#First update all  the current packs installed
sudo apt-get update && sudo apt-get upgrade;
sudo apt-get install tasksel;
sudo tasksel install ubuntu-desktop;
sudo apt-get dist-upgrade;
echo "To finish Installation Reboot the system now(Y/y,n)";
read x;
if [ $x == 'y' || $x == 'Y' ]
then  sudo reboot;
else echo "Reboot the system later to finish the installation.";
fi
