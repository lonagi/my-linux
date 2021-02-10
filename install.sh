sudo ./modules/deleter.sh
sudo ./modules/installs.sh
#sudo ./modules/settings.sh

echo "Install ZSH"
sudo apt install -y zsh
sudo ./modules/zsh.sh
./modules/zsh.sh

echo "Install Telegram"
wget https://telegram.org/dl/desktop/linux -O tg.tar.xz
tar -xf tg.tar.xz
rm -rf tg.tar.xz
mv Telegram Telegram0
mkdir Telegram Telegram/1 Telegram/2 Telegram/3
cp -r Telegram0/* Telegram/1
cp -r Telegram0/* Telegram/2
cp -r Telegram0/* Telegram/3
rm -rf Telegram0



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
sudo apt install -y 
pip3 install weboa
sudo pip3 install weboa
weboa -v

echo "Some pip install"
pip3 install pyinstaller numpy pandas pywebview
pip3 install PyQtWebEngine
#ldd /usr/lib/x86_64-linux-gnu/qt5/plugins/platforms/libqxcb.so

echo "Install C# and Jetbrains.Rider"
#Mono
sudo apt install -y apt-transport-https dirmngr gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/debian stable-buster main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install -y mono-devel

#.NET Core
sudo apt-get install -y apt-transport-https
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm -f -r packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y dotnet-sdk-5.0 apt-transport-https aspnetcore-runtime-5.0 dotnet-runtime-5.0

#Rider
wget https://download.jetbrains.com/rider/JetBrains.Rider-2020.3.2.tar.gz
mv JetBrains.Rider-2020.3.2.tar.gz Jetbrains.Rider.tar.gz
tar -xf Jetbrains.Rider.tar.gz
rm -f -r Jetbrains.Rider.tar.gz
mv JetBrains\ Rider-2020.3.2 JetBrains.Rider
sudo  mv JetBrains.Rider /opt/

echo "Unity3D"
wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage
mv UnityHub.AppImage ~/apps/UnityHub
chmod +x ~/apps/UnityHub


echo "Install Tor"
wget https://www.torproject.org/dist/torbrowser/10.0.10/tor-browser-linux64-10.0.10_en-US.tar.xz
tar -xf tor-browser-linux64-10.0.10_en-US.tar.xz 
sudo mv tor-browser_en-US /opt/Tor
rm -f -r tor-browser-linux64-10.0.10_en-US.tar.xz 

echo "Install PHP"
sudo apt install -y php php-dev php-cli php-curl php-mysql php-gd php-imagick php-zip unzip
sudo apt purge -y apache2

echo "Install Jetbrains PHPStorm"
wget https://download.jetbrains.com/webide/PhpStorm-2020.3.2.tar.gz
mv PhpStorm-2020.3.2.tar.gz Jetbrains.PHPStorm.tar.gz
tar -xf Jetbrains.PHPStorm.tar.gz
rm -f -r Jetbrains.PHPStorm.tar.gz
mv PhpStorm-203.7148.74 JetBrains.PHPStorm
sudo mv JetBrains.PHPStorm /opt/

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

echo "Install Jetbrains CLion"
wget https://download.jetbrains.com/cpp/CLion-2020.3.2.tar.gz
mv CLion-2020.3.2.tar.gz Jetbrains.CLion.tar.gz
tar -xf Jetbrains.CLion.tar.gz
rm -f -r Jetbrains.CLion.tar.gz
mv clion-2020.3.2 JetBrains.CLion
sudo mv JetBrains.CLion /opt/

echo "Install Jetbrains IDEA"
wget https://download.jetbrains.com/idea/ideaIC-2020.3.2.tar.gz
mv ideaIC-2020.3.2.tar.gz Jetbrains.IDEA.tar.gz
tar -xf Jetbrains.IDEA.tar.gz
rm -f -r Jetbrains.IDEA.tar.gz
mv idea-IC-203.7148.57 JetBrains.IDEA
sudo mv JetBrains.IDEA /opt/

echo "Install Python, Jupyter"
pip3 install jupyter

echo "============="
echo "Do it yourself"
echo "Install NordVPN"
sudo apt-get update
sudo apt-get install -y nordvpn

echo "SSH Setup"
#ssh-keygen
#cp ./id_rsa .ssh/
cp ./id_rsa.pub .ssh/
