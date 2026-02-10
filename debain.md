# Debian 13 XFCE Settings

## Install Java Development Kit
* sudo apt-get install openjdk-25-jdk

## Disable unneeded services: Bluth, printing, lan sharing
* sudo systemctl disable bluetooth.service
* sudo systemctl disable cups.service
* sudo systemctl disable avahi-daemon.service

## Completely remove Bluetooth
* sudo apt-get purge blueman bluez-utils bluez bluetooth
* sudo apt-get autoremove
* sudo apt-get autoclean

## modify new file context menu (right mouse) 
* touch ~/Templates/new_file.md

## install mouse in console
* sudo apt-get install gpm
* sudo /etc/init.d/gpm start
* or make it default autostart by
* rc-update add gpm default
* systemctl enable gpm --now

## Fix "user is not in the sudoers file"
* login as root
* sudo adduser [your username] sudo
* restart

## Fix Xfce4 panel dissapear bug
* sudo apt --reinstall install xfce4-panel
* or remove ~/.config/xfce4/panel

## Install Solitare & Chess
* sudo apt install aisleriot gnome-chess

## Also you can install Software center
* sudo apt install gnome-software

## Install soft
* sudo apt install kate apostrophe geany sublime-text

## Install Telegram
* wget https://telegram.org/dl/desktop/linux -O telegram.tar.xz
* sudo tar xfv telegram.tar.xz -C /opt/
* sudo ln -s /opt/Telegram/Telegram /usr/local/bin/telegram
* telegram
