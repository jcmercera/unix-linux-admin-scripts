#!/bin/bash

###Check if vim is installed
if dpkg -s vim &> /dev/null; then
    echo "Vim is already installed"
else
    echo "Installing Vim..."
    sudo apt update
    sudo apt install -y vim
fi
