#!/bin/bash

# Running dnf speedup script
SCRIPT="./improve_dnf_speed.sh"

if [ ! -x "$SCRIPT" ]; then
    echo "The script $SCRIPT is not executable. Setting execute permissions..."
    chmod +x "$SCRIPT"
fi

"$SCRIPT"

echo "$SCRIPT has been executed."

# Upgrade system
sudo dnf update -y

# Installing apps via dnf
sudo dnf install nodejs R python3 python-is-python3 nextcloud-client ipython3 -y

# Adding Steam repo and installing it
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf config-manager --enable fedora-cisco-openh264 -y

sudo dnf install steam -y

# Run flatpak_base_install.sh
SCRIPT="./flatpak_base_install.sh"

if [ ! -x "$SCRIPT" ]; then
    echo "The script $SCRIPT is not executable. Setting execute permissions..."
    chmod +x "$SCRIPT"
fi

"$SCRIPT"

echo "$SCRIPT has been executed."
