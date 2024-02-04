#!/bin/bash
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscaled --state=tailscaled.state &
sudo tailscale up
