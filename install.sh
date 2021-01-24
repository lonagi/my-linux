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
sudo apt install -y git curl aptitude htop neofetch
echo "Install CMake"
sudo apt install -y build-essential cmake

echo "Remove Firefox"
sudo apt-get -y remove firefox-esr
sudo apt-get autoremove firefox-esr
sudo apt-get purge firefox-esr
sudo rm -Rf /home/fnvg/.cache/mozilla/
sudo rm -Rf /home/fnvg/.mozilla/

echo "Remove garbage soft"
sudo apt purge -y okular
sudo apt purge -y konqueror

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
cp ./id_rsa .ssh/
cp ./id_rsa.pub .ssh/

echo "============="
echo "Do it yourself"
echo "Install NordVPN"
sudo apt-get update
sudo apt-get install -y nordvpn
