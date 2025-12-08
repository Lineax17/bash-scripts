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

# Task Manager like on windows
flatpak install flathub io.missioncenter.MissionCenter -y

# Wine frontend for emulating windows apps
# flatpak install flathub com.usebottles.bottles -y

# Distrobox GUI
flatpak install flathub io.github.dvlv.boxbuddyrs -y

# Minimal notes app
flatpak install flathub com.vixalien.sticky -y

# Office suite 
flatpak install flathub org.onlyoffice.desktopeditors -y

# Proton helper apps
flatpak install flathub com.github.Matoking.protontricks -y
flatpak install flathub com.vysp3r.ProtonPlus -y

# Dev toolbox
flatpak install flathub me.iepure.devtoolbox -y

# Task Manager
flatpak install flathub io.github.alainm23.planify -y


# Apps
flatpak install flathub org.filezillaproject.Filezilla -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub md.obsidian.Obsidian -y
#flatpak install flathub com.makemkv.MakeMKV -y
flatpak install flathub com.github.iwalton3.jellyfin-media-player -y
flatpak install flathub org.videolan.VLC -y
#flatpak install flathub app.zen_browser.zen -y
flatpak install flathub com.github.johnfactotum.Foliate -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.inkscape.Inkscape -y
flatpak install flathub org.prismlauncher.PrismLauncher -y

