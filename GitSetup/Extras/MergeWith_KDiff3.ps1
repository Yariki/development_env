#Requires -RunAsAdministrator

"Setting mergetool to kdiff3"
"------------------------------"
git config --global --replace-all merge.tool kdiff3
git config --global --replace-all mergetool.kdiff3.cmd "'C:\\Program Files\\KDiff3\\kdiff3.exe' `$BASE `$LOCAL `$REMOTE -o `$MERGED"
git config --global --replace-all mergetool.kdiff3.keepBackup false
git config --global --replace-all mergetool.kdiff3.trustExitCode false
git config --global --replace-all mergetool.kdiff3.prompt false

"Setting difftool to kdiff3"
"------------------------------"
git config --global --replace-all diff.tool kdiff3
git config --global --replace-all difftool.kdiff3.cmd "'C:\\Program Files\\KDiff3\\kdiff3.exe' `$LOCAL `$REMOTE"
git config --global --replace-all difftool.kdiff3.keepBackup false
git config --global --replace-all difftool.kdiff3.trustExitCode false
git config --global --replace-all difftool.kdiff3.prompt false