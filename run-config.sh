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

sudo apt install -y python3-pip
sudo apt install  -y vim

# Additional system configuration and cleanup
sudo apt-get install -y libgtk-3-0 xinit xserver-xorg-core
sudo apt-get remove -y gnome-shell
sudo update-grub

#install driver for 30XX gpus series
sudo apt install -y nvidia-driver-535

pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html

# Reboot the system
sudo reboot
