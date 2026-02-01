# Debian 13 Settings

## Install old old good second absolute minimum GNOME-2 desktop.
* sudo apt-get install gnome-session-flashback

## Remove Notification center
* gsettings set org.gnome.gnome-flashback notifications false
* 
## Remove Homae and Trash desktop icons
* gsettings set org.gnome.gnome-flashback.desktop.icons show-home false
* gsettings set org.gnome.gnome-flashback.desktop.icons show-trash false

## Install Java Development Kit
* sudo apt-get install openjdk-25-jdk

### If you already have more than one Java version installed, you can configure the Default Java version that you want to use using the command update-alternatives:
* update-alternatives --config java

## turn off Gnome Animations
* the setting is now included under "Settings" - "Accessibility" - "Seeing" - "Animation effects. 

## Disable unneeded services: Bluth, printing, lan sharing
* sudo systemctl disable bluetooth.service
* sudo systemctl disable cups.service
* sudo systemctl disable avahi-daemon.service

## Completely remove Bluetooth
* sudo apt-get purge blueman bluez-utils bluez bluetooth
* sudo apt-get autoremove
* sudo apt-get autoclean

## Install Telegram
* wget https://telegram.org/dl/desktop/linux -O telegram.tar.xz
* sudo tar xfv telegram.tar.xz -C /opt/
* sudo ln -s /opt/Telegram/Telegram /usr/local/bin/telegram
* telegram

## Set Thunar File manager
* sudo apt-get install thunar
* xdg-mime default Thunar.desktop inode/directory

##  right mouse - context menu
* touch ~/Templates/new_file.md

* 
