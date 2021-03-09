#!/bin/bash

sudo dnf update

# Grab FFMPEG (Fix Firefox video stutter)
wget https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-33.noarch.rpm
sudo rpm -i rpmfusion*.rpm
rm rpmfusion*.rpm
sudo dnf install ffmpeg -y

# # Set fish as default shell
# sudo dnf install fish util-linux-user -y
# chsh -s /usr/bin/fish

# Get VPN going
cd /etc/openvpn
sudo wget --content-disposition https://www.perfect-privacy.com/downloads/openvpn/get?system=linux
sudo unzip -j linux_*.zip
sudo rm linux_*.zip
echo -en "$USER_NAME\n$PASSWORD" > .credentials
sudo chmod o-r .credentials
sudo find /etc/openvpn/*.conf -type f -exec sed -i 's/auth-user-pass/auth-user-pass .credentials/g' {} \;

sudo wget https://www.perfect-privacy.com/downloads/updown.sh
sudo chmod +x updown.sh
sudo find /etc/openvpn/*.conf -type f -exec sed -i 's/update-resolv-conf/updown.sh/g' {} \;