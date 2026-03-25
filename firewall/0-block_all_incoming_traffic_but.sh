#!/bin/bash
# Script to block all incoming traffic except SSH, HTTP, HTTPS

# Exit if any command fails
set -e

echo "Installing ufw..."
sudo apt update
sudo apt install ufw -y

echo "Resetting ufw..."
sudo ufw --force reset

echo "Setting default policies..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Allowing SSH, HTTP, HTTPS..."
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

echo "Enabling ufw..."
sudo ufw --force enable

echo "Firewall status:"
sudo ufw status verbose
