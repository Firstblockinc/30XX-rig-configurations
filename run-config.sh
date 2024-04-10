#!/bin/bash

# Remove unused packages
sudo apt autoremove -y

# Add graphics drivers PPA
sudo add-apt-repository -y ppa:graphics-drivers/ppa

# Update package lists
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Install Git
sudo apt install -y git

# Additional system configuration and cleanup
sudo apt-get install -y libgtk-3-0 xinit xserver-xorg-core
sudo apt-get remove -y gnome-shell
sudo update-grub

#install driver for 30XX gpus series
sudo apt install -y nvidia-driver-535

# Reboot the system
sudo reboot
