termux-setup-storage
pkg update && pkg upgrade -y
pkg install ruby wget neofetch htop w3m sc mc cmatrix -y
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
cd lolcat-master/bin
gem install lolcat

echo "" >> $PREFIX/etc/bash.bashrc
echo "" >> $PREFIX/etc/bash.bashrc
echo "" >> $PREFIX/etc/bash.bashrc
echo "clear" >> $PREFIX/etc/bash.bashrc
echo "neofetch |lolcat -as 500" >> $PREFIX/etc/bash.bashrc

echo "alias sh1='cd $PREFIX/etc && nano bash.bashrc'" >> $PREFIX/etc/bash.bashrc

echo "alias up='pkg upd && pkg upg -y'" >> $PREFIX/etc/bash.bashrc

echo "alias ne='clear && neofetch |lolcat -as 250'" >> $PREFIX/etc/bash.bashrc

echo "alias x='exit'" >> $PREFIX/etc/bash.bashrc

echo "alias i='cd ~ && ls -l'" >> $PREFIX/etc/bash.bashrc

clear
cmatrix
neofetch |lolcat -as 500
