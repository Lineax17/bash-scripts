#!/bin/bash

# Upgrade system
sudo dnf update -y

# Installing apps via dnf
sudo dnf install fish nodejs R python3 python-is-python3 nextcloud-client ipython3 qemu virt-manager figlet -y

# Installing python build dependencies for pyenv
sudo dnf install make gcc patch zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel xz-devel libuuid-devel gdbm-libs libnsl2 -y

# Installing godot mono dependencies

sudo dnf install -y dotnet-sdk-8.0

# Install brave
sudo dnf install dnf-plugins-core

sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

sudo dnf install brave-browser -y

# Install VS-Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

dnf check-update
sudo dnf install code -y

# Install podman as a drop in replacement for docker
#sudo dnf install podman podman-docker podman-compose -y
sudo dnf install docker-cli docker-compose

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
