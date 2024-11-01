#!/bin/bash
# Creador: Cristhian Gabriel BONILLA BARRIOS <cristiano1728@gmail.com>
# Script que instala paquetes adicionales y pre-configura i3wm en Debian y Derivados.
#==============================================================\

#Iniciando Instalación . . .
echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Inicinado Instalación de paquetes Necesarios . . . \e[1;39;49m"
termux-setup-storage
pkg update && pkg upgrade -y
#Instalación Paquetes Necesarios
pkg install ruby wget fastfetch vim htop w3m sc mc cmatrix -y

echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Instalando LOLCAT . . . \e[1;39;49m"
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
cd lolcat-master/bin
gem install lolcat

echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Integrando comandos en el archivo bash.bashrc. . . \e[1;39;49m"
echo "


export PS1='\e[1;39;49m\e[1;38;41m┌┼─┼─\e[1;38;42m[🕞\d\e[1;38;44m📱Cristopher📲\e[1;38;40m㉿\e[1;38;45m🌎\H]\e[1;39;49m\n\e[1;38;41m├┼─┼─\e[1;31;49m┼┼》[\@][\e[1;32;49m📁\w\e[1;31;49m]\e[1;39;49m\n\e[1;38;41m└┼─┼─\e[1;31;49m┼┼》\e[1;39;49m'

clear
fastfetch |lolcat -as 550
alias sh1='cd $PREFIX/etc && nano -l -$ bash.bashrc'
alias up='pkg upd && pkg upg -y'
alias ne='clear && fastfetch |lolcat -as 550'
alias x='exit'
alias nanno='nano -l -$'
alias i='cd ~ && ls -l'

echo '
=====================================================
Atajo de Comandos
=====================================================
sh1 = Config bash.rc
up = Actualizar Repositorios y Paquetes
fa = Ejecutar Fastfetch
x = salir de terminal (Cttol + d)
i = Dirigirse a la carpeta Home - listado archivos
=====================================================' |lolcat -as 550" >> $PREFIX/etc/bash.bashrc

clear
cmatrix
fastfetch |lolcat -as 550
echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Instalación Finalizada, Disfrute del Sistema y Aplicaciones Instalados . . . \e[1;39;49m"
