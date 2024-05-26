echo -e "\x1b[1;37m\x1b[45m* 🌎 ┼─┼┼┼─>> Inicinado Instalación de paquetes Necesarios . . ."
termux-setup-storage
pkg update && pkg upgrade -y

echo -e "\x1b[1;37m\x1b[45m* 🌎 ┼─┼┼┼─>> Instalación de LOLCAT . . ."
pkg install ruby wget fastfetch vim htop w3m sc mc cmatrix -y
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
cd lolcat-master/bin
gem install lolcat

echo -e "\x1b[1;37m\x1b[45m* 🌎 ┼─┼┼┼─>> Integrando comandos en bash.bashrc . . ."
echo "


export PS1='\e[1;39;49m\e[1;38;41m┌┼─┼─\e[1;38;42m[🕞\d\e[1;38;44m📱Cristopher📲\e[1;38;40m㉿\e[1;38;45m🌎\H]\e[1;39;49m\n\e[1;38;41m├┼─┼─\e[1;31;49m┼┼》[\@][\e[1;32;49m📁\w\e[1;31;49m]\e[1;39;49m\n\e[1;38;41m└┼─┼─\e[1;31;49m┼┼》\e[1;39;49m'

clear
fastfetch |lolcat -as 500
alias sh1='cd $PREFIX/etc && nano bash.bashrc'
alias up='pkg upd && pkg upg -y'
alias ne='clear && fastfetch |lolcat -as 250'
alias x='exit'

alias i='cd ~ && ls -l'" >> $PREFIX/etc/bash.bashrc

clear
cmatrix
fastfetch |lolcat -as 500
echo -e "\x1b[1;37m\x1b[45m* 🌎 ┼─┼┼┼─>> Instalación Finalizadq, disfrute del programa, bye . . ."
