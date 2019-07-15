#!/bin/bash
#
# setup_theme.sh : For Desktop Themes
# 
# Run me in sudo!

# Valid Xfont path. Use `xset q`
XFONT_PATH='/usr/share/fonts/X11/misc'

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Get Powerline Fonts ... (Patched Fonts)
# See https://github.com/powerline/fonts
git clone https://github.com/powerline/fonts
cd fonts && ./install.sh 

# Get powerline
pip install powerline-shell
# Generate config
mkdir -p ~/.config/powerline-shell && \
powerline-shell --generate-config > ~/.config/powerline-shell/config.json

# Get Matcha
apt-get install gtk2-engines-murrine gtk2-engines-pixbuf
git clone https://github.com/vinceliuice/matcha
cd matcha && ./Install

# Get Papirus
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

echo "Installtion complete."
echo "Please see bashrc_additions and add them to .bashrc file."
echo "Use 'Tweaks' to install Papirus-Icons and Matcha Team"
echo "Also set terminal font to powerline!"
