#!/usr/bin/env bash

#Flatpak
apt-get install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
apt-get install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#Brave
apt install curl -y
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser -y

#Remmina
apt install remmina -y

#Yubico
apt install yubioath-desktop -y

#Bitwarden
flatpak install com.bitwarden.desktop -ycom.bitwarden.desktop

#Flatseal
flatpak install com.github.tchx84.Flatseal -y

#Discord
flatpak install com.discordapp.Discord -y

#Steam
apt install Steam -y

#Draw.io
flatpak install com.jgraph.drawio.desktop -y

#Packet Tracer
apt install packettracer -y

#Slimbook Battery
apt install slimbookbattery -y

#Visual Studio Code
flatpak install com.visualstudio.code -y

#Chrome
apt install google-chrome-stable -y

#Teamviewer
apt install teamviewer
