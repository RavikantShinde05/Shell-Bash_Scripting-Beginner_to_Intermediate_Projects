#!/bin/bash
# install_tool.sh

# this is a Simple Package Manager Wrapper.
# that Wraps around apt or yum to create a user-friendly installer with logging.
logfile="install_log.txt"

read -p "Enter package to install: " pkg

if command -v apt > /dev/null; then
    sudo apt update && sudo apt install -y "$pkg"
elif command -v yum > /dev/null; then
    sudo yum install -y "$pkg"
else
    echo "Unsupported package manager"
    exit 1
fi

echo "$(date): Installed $pkg" >> "$logfile"
