echo "Install some CLI, CMake, Impress, mousepad, Discord, Snap"
apt install -y git curl aptitude htop neofetch lolcat build-essential cmake qtwebengine5-dev libreoffice-impress mousepad snapd python3-pip python3-opencv ffmpeg winff blender gparted obs-studio
snap install core zoom-client

echo "Install Discord"
sudo snap install discord
snap connect discord:system-observe

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

#autoload zkbd && zkbd
cp -r ./mymotd /etc/motd
echo 'cat /etc/motd' >> ~/.zsh/.zshrc

echo "Install Sublime text, Github Desktop"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
sudo apt-get -y update
sudo apt install -y sublime-text github-desktop