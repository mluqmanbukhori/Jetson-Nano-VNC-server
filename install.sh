#!/bin/bash
echo "Enable VNC server to start each time log in"

# if you have a Jetson Nano 2GB Developer Kit (running LXDE)
mkdir -p ~/.config/autostart
cp /usr/share/applications/vino-server.desktop ~/.config/autostart/.

# for all other Jetson developer (running GNOME) uncomment this
cd /usr/lib/systemd/user/graphical-session.target.wants
sudo ln -s ../vino-server.service ./.
cd ~

# Configure the VNC server
gsetting set org.gnome.Vino prompt-enabled false
gsetting set org.gnome.Vino require-encryption false

echo "Set a password to access the VNC Server"
# Replace [ jetson ] with your desired password
gsetting set org.gnome.Vino authentication-methods "['vnc']"
gsetting set org.gnome.Vino vnc-password $(echo -n 'jetson'|base64)

echo "You've successfully activate VNC server on Jetson Nano"
echo "Please Reboot system !"
sudo reboot
