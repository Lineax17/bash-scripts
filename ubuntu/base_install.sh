#!bin/bash

# Updating system
sudo apt update
sudo apt upgrade -y

# Installing apps with apt
sudo apt install curl -y
sudo apt install wget -y
sudo apt install gpg -y
sudo apt install flatpak -y
sudo apt install nextcloud-desktop -y
sudo apt install python3 -y
sudo apt install python-is-python3 -y
sudo apt install ipython3 -y

# Installing apps with snap
sudo snap refresh
sudo snap install brave
sudo snap install thunderbird
sudo snap install discord
sudo snap install spotify
sudo snap install code --classic 
sudo snap install node --classic 
sudo snap install slack
sudo snap install intellij-idea-ultimate --classic 
sudo snap install pycharm-professional --classic
sudo snap install webstorm --classic

# Check if flathub repo is already added
if flatpak remote-list | grep -q 'flathub'
then
    echo "Flathub is already added."
else
    echo "Adding flathub repository..."
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# Installing apps via flathub
sudo flatpak install flathub com.github.Eloston.UngoogledChromium -y
