echo "Sudo settings"
apt-get install sudo -y
export PATH="$PATH:/sbin:/usr/sbin:/usr/local/sbin"

su -l
adduser fnvg sudo
chmod  0440  /etc/sudoers
logout

su root
adduser fnvg sudo
chmod  0440  /etc/sudoers
exit

reboot
