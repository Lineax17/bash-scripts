#!/bin/bash

sudo apt update && sudo apt upgrade -y

flatpak update -y

# check if snap is installed and refresh if is
if command -v snap >/dev/null 2>&1; then
    echo "snap is installed – run 'snap refresh'..."
    sudo snap refresh -y
else
    echo "snap is not installed."
fi