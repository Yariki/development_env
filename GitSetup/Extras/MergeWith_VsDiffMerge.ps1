#Requires -RunAsAdministrator

"Setting mergetool to vsdiffmerge"
"------------------------------"
git config --global --replace-all merge.tool vsdiffmerge
git config --global --replace-all mergetool.vsdiffmerge.cmd "'vsdiffmerge.exe' `$REMOTE `$LOCAL `$BASE `$MERGED" //m
git config --global --replace-all mergetool.vsdiffmerge.keepbackup false
git config --global --replace-all mergetool.vsdiffmerge.trustexistcode true
git config --global --replace-all mergetool.vsdiffmerge.prompt false

"Setting difftool to vsdiffmerge"
"------------------------------"
git config --global --replace-all diff.tool vsdiffmerge
git config --global --replace-all difftool.vsdiffmerge.cmd "'vsdiffmerge.exe' `$LOCAL `$REMOTE" //t
git config --global --replace-all difftool.vsdiffmerge.keepbackup false
git config --global --replace-all difftool.vsdiffmerge.trustexistcode true
git config --global --replace-all difftool.vsdiffmerge.prompt false
