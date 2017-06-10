# update system
sudo dnf -y update

# rpm fusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf check-update

# install java
sudo dnf -y install java-1.8.0-openjdk-headless.x86_64

# install chrome
sudo cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF
sudo dnf install google-chrome-stable

# add to repo and install node.js
sudo curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
sudo dnf check-update
sudo dnf -y install nodejs

# add to repo and install visual studio code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code

# install mongodb
sudo dnf -y install mongodb mongodb-server

# install git
sudo dnf -y install git

# install global dependencies
sudo npm i -g npm #updates npm
sudo npm i -g typescript
sudo npm i -g protractor
sudo npm i -g nodemon
