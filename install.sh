echo "Remove libreoffice garbage"
sudo apt-get remove -y libreoffice-draw libreoffice-math libreoffice-base

echo "Setup Google Chrome"
sudo apt install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb
# apt-get install -f.
rm -f ./google-chrome*.deb
