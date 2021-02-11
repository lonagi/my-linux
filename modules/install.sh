echo "Install Latte Dock"
git clone https://github.com/psifidotos/Latte-Dock
./Latte-Dock/install.sh
dolphin --style whitesur
rm -rf ./Latte-Dock

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

echo "Some pip install"
pip3 install pyinstaller numpy pandas pywebview
pip3 install PyQtWebEngine
#ldd /usr/lib/x86_64-linux-gnu/qt5/plugins/platforms/libqxcb.so

echo "Install Weboa"
pip3 install weboa

#apt install -y npm