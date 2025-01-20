#!/bin/bash

# Check if flathub repo is already added
if flatpak remote-list | grep -q 'flathub'
then
    echo "Flathub is already added."
else
    echo "Adding flathub repository..."
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# Installing apps via flathub
sudo flatpak install flathub tv.plex.PlexDesktop -y
sudo flatpak install flathub com.vixalien.sticky -y
sudo flatpak install org.filezillaproject.Filezilla -y
sudo flatpak install it.mijorus.gearlever -y
sudo flatpak install io.github.flattool.Warehouse -y
sudo flatpak install org.mozilla.Thunderbird -y
sudo flatpak install com.discordapp.Discord -y
sudo flatpak install org.gimp.GIMP -y
sudo flatpak install md.obsidian.Obsidian -y
sudo flatpak install org.libreoffice.LibreOffice -y
