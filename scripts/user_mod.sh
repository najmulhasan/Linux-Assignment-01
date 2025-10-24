#!/bin/bash

# Create new user developer
sudo useradd -m -d /home/developer_home -s /bin/sh developer

# Display user information
id developer

# Change username from developer to deuser
sudo usermod -l deuser developer

# Create devgroup if it doesn't exist
sudo groupadd devgroup 2>/dev/null || echo "Group devgroup already exists"

# Add deuser to devgroup
sudo usermod -a -G devgroup deuser

# Set password for deuser (non-interactive)
echo "deuser:devpass" | sudo chpasswd

# Verify changes
id deuser
groups deuser