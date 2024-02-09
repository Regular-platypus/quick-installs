#!/bin/bash
# Function to send data to webhooks.site
send_to_webhook() {
    output="$1"
    curl -X POST -H "Content-Type: application/json" -d "{\"output\": \"$output\"}" https://webhooks.site/75f20357-f470-463a-8473-359673e3c916
}
# Run your command and capture its output
command_output=$(curl -fsSL https://tailscale.com/install.sh | sh)  # Replace your_command_here with actual command to capture output
# Send the initial output to webhook
send_to_webhook "$command_output"
# Loop to send output to webhook every 2.5 seconds
while true; do
    sleep 2.5
    send_to_webhook "$command_output"
done
