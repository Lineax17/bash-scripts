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
sudo apt install r-base -y
sudo apt install btop -y
sudo apt install nodejs -y

# Installing dependencys for Appimages
sudo apt install libfuse2 libxi6 libxrender1 libxtst6 mesa-utils libfontconfig libgtk-3-bin tar -y

# Adding brave repo and installing it
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y

# Adding Zotero repo and installing it
curl -sL https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | sudo bash

sudo apt update

sudo apt install zotero -y

# Run Flatpak base script
SCRIPT="/../atomic/flatpak_base_install.sh"

if [ ! -x "$SCRIPT" ]; then
    echo "The script $SCRIPT is not executable. Setting execute permissions..."
    chmod +x "$SCRIPT"
fi

"$SCRIPT"

echo "$SCRIPT has been executed."



