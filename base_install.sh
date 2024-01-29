#!bin/bash

# Upgrade system
sudo dnf upgrade -y

# Adding VS Code repo
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Adding Brave repo
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

# Installing apps via dnf
sudo dnf install code brave-browser neofetch nodejs git R openjdk-17-jdk -y

# Check if flathub repo is already added
if flatpak remote-list | grep -q 'flathub'
then
    echo "Flathub is already added."
else
    echo "Adding flathub repository..."
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# Installing apps via flathub
sudo flatpak install flathub com.discordapp.Discord com.jetbrains.PyCharm-Professional com.jetbrains.IntelliJ-IDEA-Ultimate -y
