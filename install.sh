sudo ./modules/deleter.sh

echo "Install ZSH"
sudo apt install -y zsh
sudo ./modules/zsh.sh
./modules/zsh.sh

sudo ./modules/installs.sh
#sudo ./modules/settings.sh



echo "Install UWSGI"
#pip3 install uwsgi
sudo apt install uwsgi uwsgi-plugin-php
#uwsgi --plugins php --master --socket :3030 --processes 4
echo "Install MySQL & phpmyadmin"




echo "Install Python, Jupyter"
pip3 install notebook==5.7.8
pip3 install numpy pandas matplotlib pytesseract Pillow beautifulsoup4 sk-video scikit-image ImageHash mysql-connector-python opencv-python tensorflow keras
sudo pip3 install html5lib
sudo apt install -y libleptonica-dev tesseract-ocr libtesseract-dev tesseract-ocr
pip3 install tesseract tesseract-ocr
sudo -H pip3 install virtualenv
sudo pip3 install h5py==2.10.0
sudo pip3 install -U protobuf==3.8.0
pip3 install jupyter jupyter_contrib_nbextensions
sudo apt install -y jupyter-core
export PATH=$PATH:$HOME/.local/bin
jupyter contrib nbextension install --user

jupyter nbextension enable freeze/main
jupyter nbextension enable scroll_down/main
jupyter nbextension enable varInspector/main
jupyter nbextension enable execute_time/ExecuteTime
jupyter nbextension enable toggle_all_line_numbers/main
jupyter nbextension enable scratchpad/main
sudo cp cfg/notebook.json ~/.jupyter/nbconfig/
sudo cp cfg/tree.json ~/.jupyter/nbconfig/
sudo cp cfg/common.json ~/.jupyter/nbconfig/
sudo chmod +x rok/startJupyter.sh

echo "============="
echo "Do it yourself"
echo "Install NordVPN"
sudo apt-get update
sudo apt-get install -y nordvpn

echo "SSH Setup"
#ssh-keygen