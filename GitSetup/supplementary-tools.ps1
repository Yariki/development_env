#Requires -RunAsAdministrator


#Chocolatey installations

"Installing Chocolatey packages"
"------------------------------"

"Installing Node JS"
choco install nodejs -y

"Installing Postman"
choco install postman -y

"Installing Fiddler 4"
choco install fiddler4 -y


"Installing other supplementary tools"
"------------------------------------"

"Installing grunt-cli via npm"
npm install -g grunt-cli
