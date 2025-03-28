## Mavericks & El Capitan/High Sierra installation hack:
* `sudo date 0202020216`

## Update Certificates
* `bash <(curl -s http://logi.wiki/rootcerts.sh)`

## System preferences
* disable Location Services
* disable Analytics
* disable Advertising
* disable Power Nap in Battery
* disable Automatic update

install [cool desktop saver](//github.com/pedrommcarrasco/Brooklyn/releases/download/1.0.0/Brooklyn.saver.zip)

## Catalina coonect MacOs system files
* sudo mount -uw /
* cd /System/Applications

## Remove shit
* cd /Applications
* sudo rm -rf Stickies.app Photos.app Mail.app Maps.app Contacts.app Reminders.app Dictionary.app Chess.app Messages.app Photo\ Booth.app Siri.app Time\ Machine.app Photo Booth.app

## Disable NotificationCenter
* csrutil disable
* launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
* killall NotificationCenter

## Disable Spotlight
* mdutil -a -i off
* sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
* sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
* killall SystemUIServer

## You can tune mouse speed with
* defaults write -g com.apple.mouse.scaling 12.0

## Usefuls
* defaults write -g CSUIDisable32BitWarnings -boolean TRUE
* defaults write com.apple.finder QLEnableTextSelection -bool TRUE
* defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
* defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
* defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

## Disabling local Time Machine backups
* hash tmutil &> /dev/null && sudo tmutil disablelocal

## Enabling UTF-8 ONLY in Terminal.app and setting the Ocean theme by default
* defaults write com.apple.terminal StringEncodings -array 4
* defaults write com.apple.Terminal "Default Window Settings" -string "Ocean"
* defaults write com.apple.Terminal "Startup Window Settings" -string "Ocean"

## Displaying ASCII control characters using caret notation in standard text views
* defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

## Disabling disk image verification
* defaults write com.apple.frameworks.diskimages skip-verify -bool true
* defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
* defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

## Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window
* sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

## Mavericks/Yosemite only

## Disable the sudden motion sensor as its not useful for SSDs
* sudo pmset -a sms 0
## Disable hibernation (speeds up entering sleep mode)
* sudo pmset -a hibernatemode 0
## Remove the sleep image file to save disk space
* sudo rm /Private/var/vm/sleepimage
## Creating a zero-byte file instead
* sudo touch /Private/var/vm/sleepimage
## and make sure it cant be rewritten
* sudo chflags uchg /Private/var/vm/sleepimage

## Speeding up Mission Control animations and grouping windows by application
* defaults write com.apple.dock expose-animation-duration -float 0.1
* defaults write com.apple.dock "expose-group-by-app" -bool true

## Killing Dock
* defaults write com.apple.dock persistent-apps -array
* defaults write com.apple.dock autohide -bool true
* defaults write com.apple.dock autohide-delay -float 0
* defaults write com.apple.dock autohide-time-modifier -float 0

## Disabling OS X Gate Keeper
* sudo spctl --master-disable
* sudo defaults write /var/db/SystemPolicy-prefs.plist enabled -string no
* defaults write com.apple.LaunchServices LSQuarantine -bool false

## Abandoned trash:
* ~/Library/Preferences
* ~/Library/Application Support
* ~/Library/Caches
* ~/Library/Saved Application State
