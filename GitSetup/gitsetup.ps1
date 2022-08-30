#Requires -RunAsAdministrator
param(
	[Parameter(Mandatory = $true)][string] $name, 
	[Parameter(Mandatory = $true)][string] $email)

$match = (@(Get-Content $PROFILE -ErrorAction SilentlyContinue) -match 'net use H').Count -gt 0
if ($match) {
	"Drive mapping is already in '$PROFILE'"
}
else {
	net use H: \\corp.corpcommon.com\users\$env:USERNAME /Persistent:Yes 2>$null

	Try {
		Get-PSDrive H -ErrorAction Stop | Out-Null
		Add-Content $PROFILE "`r`n"
		Add-Content $PROFILE "net use H: \\corp.corpcommon.com\users\$env:USERNAME /Persistent:Yes 2>`$null"
		Add-Content $PROFILE "`r`n"
	}
 Catch {
		Write-Output "Unable to set HOME directory for user: $env:USERNAME"
	}
}

. $profile

# Set up useful program aliases
Try {
	Get-Alias g -ErrorAction Stop | Out-Null
}
Catch {
	Add-Content $PROFILE "Set-Alias g git"
}

Try {
	Get-Alias np -ErrorAction Stop | Out-Null
}
Catch {
	Add-Content $PROFILE "Set-Alias np 'C:/Program Files/Notepad++/notepad++.exe'"
}
#-----------------------------


# Install Chocolatey packages
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install git -y
choco install kdiff3 -y
choco install notepadplusplus -y
choco install conemu -y
choco install poshgit -y
choco install yarn -y

choco install git-credential-manager-for-windows -y
#-----------------------------

# Set up git aliases and configuration
git config --global user.name $name
git config --global user.email $email
git config --global user.autocrlf true

git config --global branch.autosetuprebase always

git config --global rerere.enabled true

git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -nosession"

git config --global alias.rb rebase
git config --global alias.cp cherry-pick
git config --global alias.bs bisect
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.lol "log --decorate --pretty=oneline --abbrev-commit"
git config --global alias.lola "log --decorate --pretty=oneline --abbrev-commit --all"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.lga "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
git config --global alias.lgam "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all --author '$name'"
git config --global alias.lgnm "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --no-merges"
git config --global alias.mine "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all --author '$name'"
git config --global alias.adda "add -A :/"
git config --global alias.stasha "stash save -u"


git config --global --replace-all merge.tool kdiff3
git config --global --replace-all mergetool.kdiff3.cmd "'C:\\Program Files\\KDiff3\\kdiff3.exe' `$BASE `$LOCAL `$REMOTE -o `$MERGED"
git config --global --replace-all mergetool.kdiff3.keepBackup false
git config --global --replace-all mergetool.kdiff3.trustExitCode false
git config --global --replace-all mergetool.kdiff3.prompt false


git config --global --replace-all diff.tool kdiff3
git config --global --replace-all difftool.kdiff3.cmd "'C:\\Program Files\\KDiff3\\kdiff3.exe' `$LOCAL `$REMOTE"
git config --global --replace-all difftool.kdiff3.keepBackup false
git config --global --replace-all difftool.kdiff3.trustExitCode false
git config --global --replace-all difftool.kdiff3.prompt false

git config --global core.hooksPath git-hooks

#-----------------------------
