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

# Installing dependencys for Appimages
sudo apt install libfuse2 libxi6 libxrender1 libxtst6 mesa-utils libfontconfig libgtk-3-bin tar -y

# Adding brave repo and installing it
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# Download and install Node.js:
nvm install 22

# Verify the Node.js version:
node -v # Should print "v22.13.0".
nvm current # Should print "v22.13.0".

# Verify npm version:
npm -v # Should print "10.9.2".

# Adding Zotero repo and installing it
curl -sL https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | sudo bash

sudo apt update

sudo apt install zotero -y

# Installing apps with snap
sudo snap refresh

# Run Flatpak base script

