# Debian 13 XFCE Settings

## Fix "user is not in the sudoers file"
* login as root
* sudo adduser [your username] sudo
* restart

## Fix Xfce4 panel dissapear bug
* sudo apt --reinstall install xfce4-panel
* or remove ~/.config/xfce4/panel

## Also you can install Software center
* sudo apt install gnome-software

## Add Panel Plugins
* sudo apt install xfce4-pulseaudio-plugin xfce4-eyes-plugin xfce4-xkb-plugin

## Speed up XFCE
* Settings _--> Windows Manager tweaks -> disable Compositor

## Remove power-manager and audio panel
* sudo apt purge xfce4-power-manager

## Disable unneeded services: Bluth, printing, lan sharing
* sudo systemctl list-unit-files | grep enabled
* sudo systemctl disable bluetooth.service
* sudo systemctl disable cups.service
* sudo systemctl disable avahi-daemon.service

## modify new file context menu (right mouse) 
* touch ~/Templates/new_file.md

## Install Solitare & Chess
* sudo apt install aisleriot gnome-chess

## Install editors
* sudo apt install kate apostrophe geany sublime-text neovim

## Install Java Development Kit
* sudo apt-get install openjdk-25-jdk

## Install Telegram
* wget https://telegram.org/dl/desktop/linux -O telegram.tar.xz
* sudo tar xfv telegram.tar.xz -C /opt/
* sudo ln -s /opt/Telegram/Telegram /usr/local/bin/telegram
* telegram
