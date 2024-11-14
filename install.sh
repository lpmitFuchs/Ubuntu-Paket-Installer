#!/usr/bin/env bash

#APT
apt update -y
apt upgrade -y
apt autoremove -y
#Flatpak
apt-get install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
apt-get install gnome-software-plugin-flatpak -y
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
flatpak install com.bitwarden.desktop -y

#Flatseal
flatpak install com.github.tchx84.Flatseal -y

#Discord
flatpak install com.discordapp.Discord -y

#Steam
flatpak install com.valvesoftware.Steam -y

#Draw.io
flatpak install com.jgraph.drawio.desktop -y

#Packet Tracer
#apt install packettracer -y

#Slimbook Battery
dpkg -i ./debs/slimbookbattery_4.0.4_all.deb

#Visual Studio Code
flatpak install com.visualstudio.code -y

#Chrome
flatpak install com.google.Chrome -y

#Teamviewer
dpkg -i ./debs/teamviewer_15.59.3_amd64.deb
apt --fix-broken install -y
