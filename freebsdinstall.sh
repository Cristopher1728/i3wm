#!/bin/bash
# Creador: Cristhian Gabriel BONILLA BARRIOS <cristiano1728@gmail.com>
# Script que instala paquetes adicionales y pre-configura i3wm en Debian y Derivados.
#==============================================================\

#Iniciando Instalación . . .
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Inicinado Instalación de paquetes Necesarios . . . \e[1;39;49m"
#Paquetes basicos para el sistema
sudo mv -f FreeBSD.conf /etc/pkg
sudo pkg update && sudo pkg upgrade
sudo pkg install xorg i3 i3status i3blocks nano curl nitrogen rofi lxappearance picom numlockx pulseaudio pavucontrol papirus-icon-theme gtk-arc-themes lolcat cmatrix htop btop xarchiver pcmanfm conky gthumb telegram-desktop lightdm lightdm-gtk-greeter sc-im chromium librewolf signal-desktop signal-cli es-libreoffice sc-im gimp vlc kate okular fastfetch

sudo sysrc hald_enable="YES"
sudo sysrc dbus_enable="YES"
sudo sysrc lightdm_enable="YES"

echo "exec i3" >> ~/.xinitrc

#Mover archivos de configuración a la carpeta de Nitrogen - Fondo de Pantalla
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Archivos a la carpeta de Configuración de ROFI y LIGHTDM . . . \e[1;39;49m"
mv .conkyrc ~
mv -f .login_conf ~

# sudo rm -rf *.rasi /usr/share/rofi/themes
sudo mkdir /usr/share/rofi
sudo mv -f themes /usr/share/rofi
mkdir ~/.config
mkdir ~/.config/rofi
mv rofi ~/.config
sudo mv -f i3status.conf i3blocks.conf /etc
sudo mkdir /usr/local/etc/lightdm
sudo mv -f lightdm-gtk-greeter.conf /usr/local/etc/lightdm

#Mover archivos de configuración a la carpeta de Nitrogen - Pantalla
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Archivos a la carpeta de Config de NITROGEN . . . \e[1;39;49m"
sudo mv -f bsdbackgrounds backgrounds
sudo mv -f backgrounds /usr/share
sudo mkdir ~/.config/nitrogen
sudo mv -f bg-saved.cfg nitrogen.cfg ~/.config/nitrogen
mkdir ~/.config/i3
mv config ~/.config/i3/
mv -f .shrc ~

cmatrix
fastfetch |lolcat

#Terminando la Instalación
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Instalación Finalizada, modifique detalles menores en archivo /home/user/.config/i3/config y REINICIE EL EQUIPO . . . \e[1;39;49m"
