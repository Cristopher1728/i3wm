#!/bin/bash
# Creador: Cristhian Gabriel BONILLA BARRIOS <cristiano1728@gmail.com>
# Script que instala paquetes adicionales y pre-configura i3wm en Loc-OS Linux
#==============================================================\

#Iniciando Instalación . . .
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Inicinado Instalación de paquetes Necesarios . . . \e[1;39;49m"
#Paquetes basicos para el sistema
sudo apt update && upgrade -y
sudo apt install curl nitrogen rofi lxappearance picom numlockx pulseaudio pulseaudio-utils pavucontrol arc-theme papirus-icon-theme psensor htop btop glances conky conky-all lightdm lightdm-gtk-greeter lolcat -y

echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Paquetes Adicionales para un Sistema más Completo . . . \e[1;39;49m"
#Paquetes Más usados
#sudo apt install chromium chromium-l10n libreoffice libreoffice-l10n-es gimp vlc notepadqq kate okular simplescreenrecorder gnome-software gnome-software-plugin-flatpak flatpak -y

echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Comandos al archivo .bashrc del Usuario. . . \e[1;39;49m"
echo "


export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35m\][\u\[\033[01;33m\]㉿\[\033[01;34m\]\@][\[\033[01;33m\]\w\[\033[01;34m\]]\[\033[01;32m\]\$\n┼┼》\[\033[01;37m\]'

clear
fastfetch |lolcat -as 550

alias sh1='sudo nano ~/.bashrc'
alias up='sudo apt update && sudo apt upgrade -y'
alias fa='clear && fastfetch |lolcat -as 550'
alias x='exit'
alias i='cd ~ && ls -la'
alias i3='sudo nano ~/.config/i3/config'

echo '
=====================================================
Atajo de Comandos
=====================================================
sh1 = Config bash.rc
up = Actualizar Repositorios y Paquetes
fa = Ejecutar Fastfetch
x = salir de terminal (Cttol + d)
i = Dirigirse a la carpeta Home - Listado Archivos
i3 = Abre archivo de configuración de i3wm
=====================================================' |lolcat -as 550" >> ~/.bashrc

#Mover archivos de configuración a la carpeta de Nitrogen - Fondo de Pantalla
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Archivos a la carpeta de Configuración de ROFI y LIGHTDM . . . \e[1;39;49m"
mv .conkyrc ~

# sudo rm -rf *.rasi /usr/share/rofi/themes
sudo rm -rf *.rasi /usr/share/rofi/themes
sudo mv -f themes /usr/share/rofi
sudo rm -rf ~/.config/rofi
sudo mv -f rofi ~/.config
sudo mv -f i3status.conf i3blocks.conf /etc
sudo mkdir /usr/local/etc/lightdm
sudo mv -f lightdm-gtk-greeter.conf /usr/local/etc/lightdm

#Mover archivos de configuración a la carpeta de Nitrogen - Pantalla
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Archivos a la carpeta de Config de NITROGEN . . . \e[1;39;49m"
sudo mv -f locoswallpapers backgrounds
sudo mv -f backgrounds /usr/share
sudo mkdir ~/.config/nitrogen
sudo mv -f bg-saved.cfg nitrogen.cfg ~/.config/nitrogen
mkdir ~/.config/i3
mv config ~/.config/i3/

cmatrix
neofetch |lolcat

#Terminando la Instalación
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Instalación Finalizada, modifique detalles menores en archivo /home/user/.config/i3/config y REINICIE EL EQUIPO . . . \e[1;39;49m"
