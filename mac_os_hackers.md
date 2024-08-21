## System preferences
* disable Location Services
* disable Analytics
* disable Advertising
* disable Power Nap in Battery
* disable Automatic update

install [cool desktop saver](//github.com/pedrommcarrasco/Brooklyn/releases/download/1.0.0/Brooklyn.saver.zip)

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
defaults write -g com.apple.mouse.scaling 12.0

## Usefuls
* defaults write -g CSUIDisable32BitWarnings -boolean TRUE
* defaults write com.apple.finder QLEnableTextSelection -bool TRUE
* defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

## Abandoned trash:
* ~/Library/Preferences
* ~/Library/Application Support
* ~/Library/Caches
* ~/Library/Saved Application State
