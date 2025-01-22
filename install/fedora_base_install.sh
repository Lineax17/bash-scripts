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

# Install brave
sudo dnf install dnf-plugins-core

sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

sudo dnf install brave-browser

# Install VS-Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

dnf check-update
sudo dnf install code # or code-insiders

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
