# Debian 13 Settings

### Resurrect old good second absolute minimum GNOME-2 desktop.
* sudo apt-get install gnome-session-flashback
* sudo apt-get install gnome-tweaks
### logout and select the new desktop from the login screen

### disable indexing
* sudo apt-get purge apt-xapian-index.
-----------------
## Useful tricks

## Generate a random password, put it in ~/.bashrc:
``
randpw(){ < /dev/urandom tr -dc _A-Z-a-z-0-9! | head -c${1:-16};echo;}
``
## Simple Internet browser
``
hh http://translate.google.com
``
## Show diff
``
diff Dockerfile.dev Dockerfile.prod -y
``
## Google Translate cmd
```
sudo apt install translate-shell
trans bitch
trans -brief Vittu
trans file:///home/sk/greet.txt
trans -R
trans :en vitttu
trans :en "Mulla ei ole ..."
trans :en bitch
trans -d -v
```
## RSS in cmd
```
* sudo apt-get install newsboat
* newsboat
* vim ~/.newsboat/urls
* newsboat -r
```
## FileMAnager in cmd
```
* sudo apt install nnn
* nnn and run like a wind!
* press ? for help
```

# Old Ubuntu Config
* sudo apt install gnome-session-flashback
* sudo apt install gnome-tweaks

## Dconf
* sudo apt install dconf-editor
* gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
* gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true

## Disable feedback
* sudo systemctl stop apport.service
* sudo systemctl mask apport.service

## edit swap
* gedit admin:///etc/sysctl.conf
* vm.swappiness=10

## Startup apps
* service --status-all 
* sudo service namehere stop

## Cleanup
* sudo apt-get clean
* sudo apt-get autoremove

pwd - Print Working Directory
cd - Change Directory
ls - List Directories
cat - concatenate, catenate
cp - Copy
stdout - Standard Out
head - see the first 10 lines
tail - see the last 10 lines
wc - Word count

chmod 755 myfile
chown patty myfile
chgrp whales myfile

### Creating archives with tar
tar cvf mytarfile.tar mycoolfile1 mycoolfile2

### To extract the contents of a tar file, use:
$ tar xvf mytarfile.tar

### network

To copy a file over from local host to a remote host
$ scp myfile.txt username@remotehost.com:/remote/directory

ifconfig -a

## linux filesystem

* / - The root directory of the entire filesystem hierarchy, everything is nestled under this directory.
* /bin - Essential ready-to-run programs (binaries), includes the most basic commands such as ls and cp.
* /boot - Contains kernel boot loader files.
* /dev - Device files.
* /etc - Core system configuration directory, should hold only configuration files and not any binaries.
* /home - Personal directories for users, holds your documents, files, settings, etc.
* /lib - Holds library files that binaries can use.
* /media - Used as an attachment point for removable media like USB drives.
* /mnt - Temporarily mounted filesystems.
* /opt - Optional application software packages.
* /proc - Information about currently running processes.
* /root - The root user's home directory.
* /run - Information about the running system since the last boot.
* /sbin - Contains essential system binaries, usually can only be ran by root.
* /srv - Site-specific data which are served by the system.
* /tmp - Storage for temporary files
* /usr - This is unfortunately named, most often it does not contain user files in the sense of a home folder. This is meant for user installed software and utilities, however that is not   to say you can't add personal directories in there. Inside this directory are sub-directories for /usr/bin, /usr/local, etc.
* /var - Variable directory, it's used for system logging, user tracking, caches, etc. Basically anything that is subject to change all the time.
