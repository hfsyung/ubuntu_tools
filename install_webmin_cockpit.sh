#!/bin/bash

# Function to get the current server IP address
get_ip() {
  hostname -I | awk '{print $1}'
}

# Update the package list and install dependencies
sudo apt update
sudo apt install -y wget apt-transport-https software-properties-common

# Install Webmin
# Add Webmin repository
wget -qO - http://www.webmin.com/jcameron-key.asc | sudo apt-key add -
sudo add-apt-repository "deb http://download.webmin.com/download/repository sarge contrib"

# Update package list and install Webmin
sudo apt update
sudo apt install -y webmin

# Install Cockpit
sudo apt install -y cockpit

# Start and enable Cockpit service
sudo systemctl start cockpit
sudo systemctl enable cockpit

# Display status of Webmin and Cockpit services
sudo systemctl status webmin
sudo systemctl status cockpit

# Get the current server IP
SERVER_IP=$(get_ip)

# Instructions for accessing Webmin and Cockpit
echo "Webmin and Cockpit installation completed."
echo "You can access Webmin at: https://$SERVER_IP:10000"
echo "You can access Cockpit at: https://$SERVER_IP:9090"
