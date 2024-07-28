#!/bin/bash
# Creador: Cristhian Gabriel BONILLA BARRIOS <cristiano1728@gmail.com>
# Script que instala paquetes adicionales y pre-configura i3wm en Debian y Derivados.
#==============================================================\

#Iniciando Instalación . . .
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Inicinado Instalación de paquetes Necesarios . . . \e[1;39;49m"
#Paquetes basicos para el sistema
sudo pkg update && sudo pkg upgrade
sudo pkg install sudo xorg i3 tilix i3status i3blocks i3lock slim curl nitrogen rofi lxappearance picom numlockx pulseaudio pavucontrol papirus-icon-theme gtk-arc-themes lolcat cmatrix polybar neofetch htop btop xarchiver pcmanfm conky gthumb telegram-desktop lightdm-gtk-greeter i3status i3blocks sc-im

echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Paquetes Adicionales para un Sistema más Completo . . . \e[1;39;49m"
#Paquetes Más usados
sudo pkg install chromium libreoffice gimp vlc kate okular simplescreenrecorder ulauncher

echo "hald_enable="YES"" >> /etc/rc.conf
echo "dbus_enable="YES"" >> /etc/rc.conf
echo "slim_enable="YES"" >> /etc/rc.conf

echo "/usr/local/bin/i3" >> ~/.xinitrc

#Mover archivos de configuración a la carpeta de Nitrogen - Fondo de Pantalla
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Archivos a la carpeta de Configuración de ROFI y LIGHTDM . . . \e[1;39;49m"
mv .conkyrc ~
# sudo rm -rf *.rasi /usr/share/rofi/themes
sudo mv -f themes /usr/share/rofi/
mv rofi ~/.config
sudo mv -f i3status.conf i3blocks.conf /etc

#Mover archivos de configuración a la carpeta de Nitrogen - Pantalla
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Archivos a la carpeta de Config de NITROGEN . . . \e[1;39;49m"
sudo mv -f bsdbackgrounds backgrounds
sudo mv -f backgrounds /usr/share
sudo mv -f bg-saved.cfg nitrogen.cfg ~/.config/nitrogen
mv config ~/.config/i3/

cmatrix
neofetch |lolcat

#Terminando la Instalación
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Instalación Finalizada, modifique detalles menores en archivo /home/user/.config/i3/config y REINICIE EL EQUIPO . . . \e[1;39;49m"
