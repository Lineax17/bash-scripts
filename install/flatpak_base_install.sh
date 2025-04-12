#!/bin/bash

# Add flathub repo for easier use in terminal
if flatpak remote-list | grep -q 'flathub'
then
    echo "Flathub is already added."
else
    echo "Adding flathub repository..."
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# System utilities

# App for management of installed flatpaks
flatpak install flathub io.github.flattool.Warehouse -y

# Graphical flatpak permission center
flatpak install flathub com.github.tchx84.Flatseal -y

# App for installing and updating Appimages
flatpak install flathub it.mijorus.gearlever -y

# Wine frontend for emulating windows apps
flatpak install flathub com.usebottles.bottles -y

# Minimal notes app
flatpak install flathub com.vixalien.sticky -y

# Office suite 
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub org.onlyoffice.desktopeditors -y


# Apps
flatpak install flathub dev.alextren.Spot
flatpak install flathub org.filezillaproject.Filezilla -y
flatpak install flathub org.mozilla.Thunderbird -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub md.obsidian.Obsidian -y
flatpak install flathub com.makemkv.MakeMKV -y
flatpak install flathub com.github.iwalton3.jellyfin-media-player -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub app.zen_browser.zen -y
flatpak install flathub net.davidotek.pupgui2 -y