echo "Remove libreoffice garbage"
sudo apt-get remove -y libreoffice-draw libreoffice-math libreoffice-base

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