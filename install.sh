echo "Remove libreoffice garbage"
sudo apt-get remove -y libreoffice-draw libreoffice-math libreoffice-base

echo "Setup Google Chrome"
sudo apt install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb
# apt-get install -f.
rm -f ./google-chrome*.deb

echo "SUDO fix problems"
sudo chown root:root /etc/sudoers.d
sudo chmod 755 /etc/sudoers.d

echo "Install some CLI"
sudo apt install -y git curl aptitude htop neofetch lolcat
echo "Install CMake"
sudo apt install -y build-essential cmake
sudo apt install -y qtwebengine5-dev

echo "Remove Firefox"
sudo apt-get -y remove firefox-esr
sudo apt-get autoremove firefox-esr
sudo apt-get purge firefox-esr
sudo rm -Rf /home/fnvg/.cache/mozilla/
sudo rm -Rf /home/fnvg/.mozilla/

echo "Remove garbage soft"
sudo apt purge -y okular
sudo apt purge -y konqueror
sudo apt purge -y kaddressbook 
sudo apt purge -y akregator

echo "Autoremove"
sudo apt autoremove -y

echo "Install Impress"
sudo apt install -y libreoffice-impress

echo "Install ZSH"
sudo apt install -y zsh
zsh <(curl -Ls https://git.modder.pw/mcmodder/dotfiles-patches/raw/master/install.zsh)
sudo zsh <(curl -Ls https://git.modder.pw/mcmodder/dotfiles-patches/raw/master/install.zsh)
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
#autoload zkbd && zkbd
sudo cp -r ./mymotd /etc/motd
echo 'cat /etc/motd' >> .zsh/.zshrc

echo "SSH Setup"
#ssh-keygen
#cp ./id_rsa .ssh/
cp ./id_rsa.pub .ssh/

echo "Bluetooth drivers for JBL"
sudo apt install -y pulseaudio pulseaudio-module-bluetooth pavucontrol bluez-firmware blueman
killall pulseaudio

echo "Install Notepad mousepad"
sudo apt install -y mousepad

echo "Install GParted"
sudo apt install -y gparted

echo "Install Snap"
sudo apt install -y snapd
sudo snap install core

echo "Install Discord"
sudo snap install discord
snap connect discord:system-observe
mv discord.desktop ~/apps/

echo "Install Telegram"
wget https://telegram.org/dl/desktop/linux -O tg.tar.xz
tar -xf tg.tar.xz
rm -f -r tg.tar.xz
mv Telegram Telegram0
mkdir Telegram
mkdir Telegram/lona
mkdir Telegram/CNBS
mkdir Telegram/fsoc
cp -r Telegram0/* Telegram/lona
cp -r Telegram0/* Telegram/fsoc
cp -r Telegram0/* Telegram/CNBS
rm -f -r Telegram0
mv telegram.desktop ~/apps/

echo "Install Latte Dock"
git clone https://github.com/psifidotos/Latte-Dock
./Latte-Dock/install.sh
dolphin --style whitesur
rm -f -r ./Latte-Dock

echo "Add kali repo"
sudo cp sources.list /etc/apt/sources.list
sudo apt-get clean
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
git clone https://github.com/LionSec/katoolin.git
sudo cp katoolin/katoolin.py /usr/bin/katoolin
sudo chmox +x /usr/bin/katoolin
rm -f -r ./katoolin

echo "Install Weboa"
sudo apt install -y python3-pip
pip3 install weboa
sudo pip3 install weboa
weboa -v

echo "Some pip install"
pip3 install pyinstaller numpy pandas pywebview
pip3 install PyQtWebEngine
#ldd /usr/lib/x86_64-linux-gnu/qt5/plugins/platforms/libqxcb.so

echo "Install OpenCV"
sudo apt install -y python3-opencv

echo "Install FFMpeg"
sudo apt install -y ffmpeg
sudo apt install -y winff

echo "Install Sublime text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

echo "Install Github Desktop"
sudo wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
sudo apt-get -y update
sudo apt install -y github-desktop

echo "Install C# and Jetbrains.Rider"
#Mono
sudo apt install -y apt-transport-https dirmngr gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/debian stable-buster main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install -y mono-devel
#.NET Core
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm -f -r packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-5.0
sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y aspnetcore-runtime-5.0
sudo apt-get install -y dotnet-runtime-5.0
#Rider
wget https://download.jetbrains.com/rider/JetBrains.Rider-2020.3.2.tar.gz
mv JetBrains.Rider-2020.3.2.tar.gz Jetbrains.Rider.tar.gz
tar -xf Jetbrains.Rider.tar.gz
rm -f -r Jetbrains.Rider.tar.gz
mv JetBrains\ Rider-2020.3.2 JetBrains.Rider
sudo  mv JetBrains.Rider /opt/
mv rider.desktop ~/apps/

echo "Unity3D"
wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage
mv UnityHub.AppImage ~/apps/UnityHub
chmod +x ~/apps/UnityHub

echo "Install Blender"
sudo apt install -y blender

echo "Install Zoom"
sudo snap install zoom-client

echo "Install Tor"
wget https://www.torproject.org/dist/torbrowser/10.0.10/tor-browser-linux64-10.0.10_en-US.tar.xz
tar -xf tor-browser-linux64-10.0.10_en-US.tar.xz 
sudo mv tor-browser_en-US /opt/Tor
rm -f -r tor-browser-linux64-10.0.10_en-US.tar.xz 

echo "Install PHP"
sudo apt install -y php php-dev php-cli php-curl php-imagick php-common php-zip unzip
sudo apt install -y php-mysql php-gd
sudo apt purge -y apache2

echo "Install Composer"
wget -O composer-setup.php https://getcomposer.org/installer
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
sudo composer self-update  
rm -f -r composer-setup.php

echo "Install UWSGI"
pip3 install uwsgi
sudo apt install uwsgi uwsgi-plugin-php
#uwsgi --plugins php --master --socket :3030 --processes 4

echo "Install nginx"
sudo apt install -y nginx
sudo apt install -y ufw
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
PATH=$PATH:~/usr/sbin
PATH=$PATH:/usr/sbin
sudo mv ./default.nginx /etc/nginx/sites-available/default


echo "Install MySQL & phpmyadmin"

echo "Install NodeJs,Npm,js"
sudo apt install -y nodejs npm
sudo apt-get install -y npm

echo "Install SVGO"
sudo npm install -g svgo

echo "Install Jetbrains Webstorm"
wget https://download.jetbrains.com/webstorm/WebStorm-2020.3.2.tar.gz
mv WebStorm-2020.3.2.tar.gz Jetbrains.Webstorm.tar.gz
tar -xf Jetbrains.Webstorm.tar.gz
rm -f -r Jetbrains.Webstorm.tar.gz
mv WebStorm-203.7148.54 JetBrains.Webstorm
sudo mv JetBrains.Webstorm /opt/
mv webstorm.desktop ~/apps/


echo "============="
echo "Do it yourself"
echo "Install NordVPN"
sudo apt-get update
sudo apt-get install -y nordvpn
