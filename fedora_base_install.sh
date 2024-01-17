#!bin/bash

sudo dnf update -y

sudo dnf upgrade -y

sudo dnf install neofetch -y

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf install code -y

sudo dnf install nodejs -y

sudo dnf install git -y

sudo dnf install R -y

sudo dnf install openjdk-17-jdk

sudo flatpak install Brave -y

sudo flatpak install discordapp -y

sudo flatpak install IntelliJ IDEA Ultimate -y
