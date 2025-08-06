#!/bin/bash

# Update all packages and save the output to update.log
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y | tee update.log
