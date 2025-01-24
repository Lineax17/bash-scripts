#!/bin/bash

# Check if flathub repo is already added
if flatpak remote-list | grep -q 'flathub'
then
    echo "Flathub is already added."
else
    echo "Adding flathub repository..."
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# Modify installs to point directly to flathub
# Installing apps via flathub
sudo flatpak install flathub tv.plex.PlexDesktop -y
sudo flatpak install flathub com.vixalien.sticky -y
sudo flatpak install flathub org.filezillaproject.Filezilla -y
sudo flatpak install flathub it.mijorus.gearlever -y
sudo flatpak install flathub io.github.flattool.Warehouse -y
sudo flatpak install flathub org.mozilla.Thunderbird -y
sudo flatpak install flathub com.discordapp.Discord -y
sudo flatpak install flathub org.gimp.GIMP -y
sudo flatpak install flathub md.obsidian.Obsidian -y
sudo flatpak install flathub org.libreoffice.LibreOffice -y
sudo flatpak install flathub com.makemkv.MakeMKV -y
sudo flatpak install flathub com.usebottles.bottles -y
