#!/bin/bash
set -e

sudo apt update
sudo apt install -y vino

# Enable the VNC server to start each time you log in

# if you have a Jetson Nano 2GB Developer Kit (running LXDE)
mkdir -p ~/.config/autostart
cp /usr/share/applications/vino-server.desktop ~/.config/autostart/.

# for all other Jetson developer (running GNOME) uncomment this
sudo ln -s ../vino-server.service \
    /usr/lib/systemd/user/graphical-session.target.wants
cd ~

# Configure the VNC server
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false

# Set a password to access the VNC server
# Replace [ jetson ] with your desired password
gsettings set org.gnome.Vino authentication-methods "['vnc']"
gsettings set org.gnome.Vino vnc-password $(echo -n 'jetson'|base64)

echo "You've successfully activate VNC server on Jetson Nano"
echo "Reboot the system so that the settings take effect"
sudo reboot
