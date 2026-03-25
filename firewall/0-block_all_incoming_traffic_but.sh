#!/bin/bash
# Script to block all incoming traffic except 22, 80, 443

# Update system and install ufw
sudo apt update
sudo apt install -y ufw

# Reset any previous rules
sudo ufw --force reset

# Default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow required ports (order is important!)
sudo ufw allow 22/tcp   # SSH
sudo ufw allow 80/tcp   # HTTP
sudo ufw allow 443/tcp  # HTTPS

# Enable UFW
sudo ufw --force enable

# Show status
sudo ufw status verbose
