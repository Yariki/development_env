# utils
choco install -y 7zip.install
choco install -y ditto
choco install -y greenshot
choco install -y adobereader
choco install -y irfanview
choco install -y teracopy
choco install -y lockhunter
choco install -y ag

# dev utils
choco install -y cygwin --params "/InstallDir:C:\tools /NoStartMenu"
#choco install -y cyg-get
choco install -y cmder
choco install -y firacode
choco install -y cascadiacode
choco install -y git
choco install -y postman
choco install -y git-fork
choco install -y powershell-preview

# containers
choco install -y docker-desktop
choco install -y docker-kitematic

# communication
choco install -y slack

# local servers
choco install -y nginx --params '"/installLocation:C:\tools /port:433"'

# java
choco install -y jdk8 -params 'installdir=c:\\tools\\java8'
choco install -y intellijidea-community

# scala
choco install -y sbt

# db
choco install -y mysql.workbench