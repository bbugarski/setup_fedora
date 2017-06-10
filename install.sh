# update system
sudo dnf update -y

# rpm fusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf check-update

# install java
sudo dnf install java-1.8.0-openjdk-headless.x86_64 -y

# install chrome
sudo cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF
sudo dnf install google-chrome-stable -y

# add to repo and install node.js
sudo curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
sudo dnf check-update
sudo dnf install nodejs -y

# add to repo and install visual studio code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code -y

# install mongodb
sudo dnf install mongodb mongodb-server -y

# install git
sudo dnf install git -y

# install global dependencies
sudo npm i -g npm #updates npm
sudo npm i -g typescript
sudo npm i -g protractor
sudo npm i -g nodemon

# add repo and install skype
sudo dnf config-manager --add-repo https://repo.skype.com/data/skype-stable.repo 
sudo dnf install skypeforlinux -y 

# sudo reboot
sudo reboot
