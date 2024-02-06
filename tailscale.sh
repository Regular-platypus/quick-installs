#!/bin/bash

# Download and execute Tailscale installer script using curl
curl -fsSL https://tailscale.com/install.sh | sh


#fix network for exit nodes
echo 'net.ipv4.ip_forward = 1' | sudo tee -a /etc/sysctl.d/99-tailscale.conf
echo 'net.ipv6.conf.all.forwarding = 1' | sudo tee -a /etc/sysctl.d/99-tailscale.conf
sudo sysctl -p /etc/sysctl.d/99-tailscale.conf

echo 'net.ipv4.ip_forward = 1' | sudo tee -a /etc/sysctl.conf
echo 'net.ipv6.conf.all.forwarding = 1' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p /etc/sysctl.conf

firewall-cmd --permanent --add-masquerade


# Run tailscaled in the background
sudo tailscaled &

# Run tailsccale with ssh and exit node
sudo tailscale up --ssh --advertise-exit-node
