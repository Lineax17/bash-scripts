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
flatpak install flathub tv.plex.PlexDesktop -y
flatpak install flathub com.vixalien.sticky -y
flatpak install flathub org.filezillaproject.Filezilla -y
flatpak install flathub it.mijorus.gearlever -y
flatpak install flathub io.github.flattool.Warehouse -y
flatpak install flathub org.mozilla.Thunderbird -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub md.obsidian.Obsidian -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub com.makemkv.MakeMKV -y
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub org.onlyoffice.desktopeditors
