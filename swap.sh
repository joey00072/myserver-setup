#!/bin/bash

sudo fallocate -l 2G /swapfile

# Create a 2 GB file
sudo dd if=/dev/zero of=/swapfile bs=1G count=2

# Change the permissions of the file to make it only readable and writable by root
sudo chmod 600 /swapfile

# Turn the file into a swap file
sudo mkswap /swapfile

# Enable the swap file
sudo swapon /swapfile

# Make the swap file permanent
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

