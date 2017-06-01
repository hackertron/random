#! /bin/sh
# use this script where the wifi authentication is based on mac ID's 
echo "changing MAC address for anyplace"
	sudo ifconfig wlan0 down hw ether 2e:ba:bb:97:45:d6
	sudo ifconfig wlan0 up
echo " MAC changed "
