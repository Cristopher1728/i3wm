termux-setup-storage
pkg update && pkg upgrade -y
pkg install ruby wget neofetch htop
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

neofetch |lolcat -as 500
