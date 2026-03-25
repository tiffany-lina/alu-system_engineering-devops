#!/bin/bash
# Script to block all incoming traffic except SSH, HTTP, and HTTPS using iptables

# Exit immediately if a command fails
set -e

echo "Flushing all existing iptables rules..."
sudo iptables -F
sudo iptables -X
sudo iptables -t nat -F
sudo iptables -t nat -X
sudo iptables -t mangle -F
sudo iptables -t mangle -X

echo "Setting default policies..."
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT ACCEPT

echo "Allowing loopback traffic..."
sudo iptables -A INPUT -i lo -j ACCEPT

echo "Allowing established and related connections..."
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

echo "Allowing SSH, HTTP, HTTPS..."
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

echo "Saving iptables rules..."
sudo apt install iptables-persistent -y
sudo netfilter-persistent save

echo "Firewall setup complete! Current rules:"
sudo iptables -L -v --line-numbers
