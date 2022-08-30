# Git commandline developer setup for Windows

Script for automatically setting up a basic git commandline setup for Windows developer machines.

1. Open administrator Powershell prompt.
2. Run: Set-ExecutionPolicy Unrestricted
2. Navigate to this directory
3. Execute .\gitsetup.ps1
4. Restart administrator Powershell. You should now have git configured.

## Troubleshooting
In some cases, even though the installations go through, PowerShell cannot
find git. In those cases, you get a lot of errors related to git not being
able to create aliases. If you get such an error, open a new elevated PowerShell
and run the script one more time. It is very likely that the errors will disappear.

## Test
Among other things, the script also sets the default editor of Git to be Notepad++.
But the program path is hardcoded. So, do check that the editor is corectly set by
running the following command (either dot source the $profile or restart PowerShell
before running the command):

    git config -e --global

This command should open the Git configuration file in Notepad++. If the configuration
opens in another editor (Vim, for example), that may indicate that the program path is
incorrect. You can fix it by running the following Git command (replace the Notepad++
path with the correct path):

git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -nosession"

__NB:__ Script also installs conemu which is a superior commandline shell.

Improve any auto-setup issues, and commit them. (There is a local git repo in this directory).

# Supplementary tools

When installing the tools from scratch, it may be useful to have a look at the **supplementary-tools.ps1**.
It includes the most common tools used by the developers. You may choose to run the whole script or
just copy/paste the lines you are interested in.

# Changing the Git merge tool

Git allows setting any external tool for diff and merge operations. 
In folder "Extras" you can find 2 scripts and switch between kDiff3 and VsDiffMerge.
Just execute one with "administrator" privileges and chosen tool will be set as default for all repositories.
Be careful! No one tool guarantee 100% successful merge. 