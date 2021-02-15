echo "SUDO fix problems"
chown root:root /etc/sudoers.d
chmod 755 /etc/sudoers.d

echo "Add kali repo"
cp etc/kali.list /etc/apt/sources.list.d/
apt clean
apt update
apt upgrade
apt dist-upgrade
git clone https://github.com/LionSec/katoolin.git
mv katoolin/katoolin.py /usr/bin/katoolin
chmod +x /usr/bin/katoolin