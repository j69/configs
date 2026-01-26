## Set "Old" Explorer Context Menu as Default

* reg add "HKEY_CURRENT_USER\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /f

## Remove Explorer "Command Bar"

* reg add "HKCU\Software\Classes\CLSID\{d93ed569-3b3e-4bff-8355-3c44f6a52bb5}\InprocServer32" /f /ve

## Restart Windows Explorer. (Applies the above settings without needing a reboot)

* taskkill /f /im explorer.exe
* start explorer.exe

## FIX error "The server returned the link"
* reg edit HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\ValidateAdminCodeSignatures "1" -> "0" 

## Running the latest release of Chris Titus WinUtil
You will first need to start a Powershell terminal as Admin.
* irm "https://christitus.com/win" | iex
