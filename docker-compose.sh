#!/bin/bash

# Script to install Docker Compose (latest version)

# Step 1: Update System
echo "Updating system..."
sudo apt update -y || sudo yum update -y

# Step 2: Install curl if not available
echo "Installing curl..."
sudo apt install curl -y || sudo yum install curl -y

# Step 3: Download Latest Docker Compose Binary
echo "Downloading latest Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Step 4: Give Execution Permission
echo "Applying executable permissions..."
sudo chmod +x /usr/local/bin/docker-compose

# Step 5: Verify Installation
echo "Docker Compose Version:"
docker-compose --version

echo "Docker Compose Installed Successfully!"
