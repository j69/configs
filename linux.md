
## Config
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
