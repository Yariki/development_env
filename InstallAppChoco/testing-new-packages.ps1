# win configurations
choco install -y taskbar-winconfig --params "'/LOCATION:top /SIZE:small /LOCKED:yes /COMBINED:no /CORTANA:icon /AUTOTRAY:no /USEPOWERSHELL:no'"
choco install -y desktopicons-winconfig --params "'/Desktop:YES /UserFiles:YES /ControlPanel:NO /Network:NO /RecycleBin:YES /OneDrive:NO'"
choco install -y explorer-winconfig --params "'/SHOWEXTENSIONS:yes /SHOWFULLPATH:yes /SHOWENCRYPTED:yes /SHOWCHECKBOXES:no /USESHARINGWIZARD:no /USEVIEW:details'"
#choco install -y chocolatey-font-helpers.extension

#Browsers
choco install -y tor-browser
choco install -y brave
choco install -y vivaldi


#utils
choco install -y irfanviewplugins

# choco updates
choco install -y choco-package-list-backup
choco install -y instchoco
choco install -y choco-upgrade-all-at
choco install -y choco-cleaner

#choco packages maintanance
choco install -y chocolatey-fastanswers.extension
choco install -y windows-iso-downloader
choco install -y ag