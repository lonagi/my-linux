echo "Install some CLI, CMake, Impress, mousepad, Discord, Snap, PHP, NodeJs"
apt install -y git curl aptitude htop neofetch lolcat build-essential cmake qtwebengine5-dev libreoffice-impress mousepad snapd python3-pip python3-opencv ffmpeg winff blender gparted obs-studio php php-dev php-cli php-curl php-mysql php-gd php-imagick php-zip unzip nodejs npm
apt purge -y apache2
snap install core zoom-client
pip3 install weboa

echo "Install SVGO"
npm install -g svgo

echo "Install nginx"
apt install -y nginx
# apt install -y ufw
# ufw app list
# ufw allow 'Nginx HTTP'
PATH=$PATH:~/usr/sbin
PATH=$PATH:/usr/sbin
mv ./etc/default.nginx /etc/nginx/sites-available/default

echo "Install Discord"
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
dpkg -i ./discord.deb
#snap install discord
#snap connect discord:system-observe

echo "Bluetooth drivers for JBL"
# apt install -y pulseaudio pulseaudio-module-bluetooth pavucontrol bluez-firmware blueman
# killall pulseaudio
apt install -y pavucontrol bluez-firmware blueman
pulseaudio -k
pulseaudio --start

echo "Setup Google Chrome"
#wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
#sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#deb http://dl.google.com/linux/chrome/deb/ stable main
curl -sL https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
apt install -y google-chrome-stable

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# apt install libxss1 libappindicator1 libindicator7
# apt install ./google-chrome*.deb
# # apt-get install -f.
# rm -f ./google-chrome*.deb

cp -r ./etc/motd /etc/motd
echo 'cat /etc/motd' >> ~/.zsh/.zshrc

echo "Install Sublime text, Github Desktop"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | apt-key add -
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
apt -y update
apt install -y sublime-text github-desktop

echo "Install C# and Jetbrains.Rider"
#Mono
apt install -y apt-transport-https dirmngr gnupg ca-certificates
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/debian stable-buster main" | tee /etc/apt/sources.list.d/mono-official-stable.list
apt update
apt install -y mono-devel

#.NET Core
apt install -y apt-transport-https
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm -f -r packages-microsoft-prod.deb
apt update
apt install -y dotnet-sdk-5.0 apt-transport-https aspnetcore-runtime-5.0 dotnet-runtime-5.0

echo "Unity3D"
wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage
mv UnityHub.AppImage ~/apps/UnityHub
chmod +x ~/apps/UnityHub