echo "Remove garbage"
apt purge -y libreoffice-draw libreoffice-math libreoffice-base firefox-esr okular konqueror kaddressbook akregator
rm -rf $HOME/.cache/mozilla/ $HOME/.mozilla/
apt autoremove -y