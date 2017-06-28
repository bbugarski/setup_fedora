# update system
sudo dnf update -y

# add repos
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF
sudo curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf config-manager --add-repo https://repo.skype.com/data/skype-stable.repo 

sudo dnf check-update
# install apps
sudo dnf install vim -y
sudo dnf install java-1.8.0-openjdk-headless.x86_64 -y
sudo dnf install google-chrome-stable -y
sudo dnf install nodejs -y
sudo dnf install code -y
sudo dnf install git -y
sudo dnf install skypeforlinux -y 
sudo dnf install viber.x86_64 -y
sudo dnf install mongodb.x86_64 -y
sudo dnf install mongodb-server.x86_64 -y
sudo dnf install postgresql-server postgresql-contrib -y
sudo dnf install pgadmin3 -y

# install global dependencies
sudo npm i -g npm #updates npm
sudo npm i -g typescript
sudo npm i -g protractor
sudo npm i -g nodemon
sudo npm i -g @angular/cli

# sudo reboot
sudo reboot
