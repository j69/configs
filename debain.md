# Debian 13 Settings

## Install old old good second absolute minimum GNOME-2 desktop.
* sudo apt-get install gnome-session-flashback

## Remove Notification center
* gsettings set org.gnome.gnome-flashback notifications false

## Install Java Development Kit
* sudo apt-get install openjdk-25-jdk

### If you already have more than one Java version installed, you can configure the Default Java version that you want to use using the command update-alternatives:
* update-alternatives --config java
