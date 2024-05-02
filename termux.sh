termux-setup-storage
pkg update && pkg upgrade -y
pkg install ruby wget neofetch htop w3m sc mc cmatrix -y
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
cd lolcat-master/bin
gem install lolcat

echo "


clear
neofetch |lolcat -as 500
alias sh1='cd $PREFIX/etc && nano bash.bashrc'
alias up='pkg upd && pkg upg -y'
alias ne='clear && neofetch |lolcat -as 250'
alias x='exit'

alias i='cd ~ && ls -l'" >> $PREFIX/etc/bash.bashrc

clear
cmatrix
neofetch |lolcat -as 500
rm -r lolcat-master master.zip xxx.sh