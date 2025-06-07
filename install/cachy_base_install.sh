#!/bin/bash

# Add aur helper paru if not already installed
if ! command -v paru &> /dev/null
then
    echo "Paru is not installed. Installing..."
    sudo pacman -S --noconfirm paru
else
    echo "Paru is already installed."
fi

# Add fuse for appimage support
sudo pacman -S --needed fuse2

# Add flatpak xdg-backgrounds if not already installed
sudo pacman -S --needed xdg-desktop-portal xdg-desktop-portal-kde flatpak-kcm

# Install flatpak if not already installed
if ! command -v flatpak &> /dev/null
then
    echo "Flatpak is not installed. Installing..."
    sudo pacman -S --noconfirm flatpak
else
    echo "Flatpak is already installed."
fi

# Run flatpak_base_install.sh script
if [ -f "$(dirname "$0")/flatpak_base_install.sh" ]; then
    echo "Running flatpak_base_install.sh..."
    bash "$(dirname "$0")/flatpak_base_install.sh"
else
    echo "flatpak_base_install.sh not found. Skipping."
fi
