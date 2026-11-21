#!/bin/bash
# Creador: Cristhian Gabriel BONILLA BARRIOS <cristiano1728@gmail.com>
# Script que instala paquetes adicionales y pre-configura i3wm en Debian y Derivados.
#==============================================================\

#Iniciando Instalación . . .
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Inicinado Instalación de paquetes Necesarios . . . \e[1;39;49m"
#Paquetes basicos para el sistema
sudo apt update && sudo apt full-upgrade -y

sudo apt install xorg i3wm i3status tilix network-manager network-manager-gnome -y

sudo apt install curl nitrogen rofi lxappearance picom numlockx pulseaudio pulseaudio-utils pavucontrol arc-theme papirus-icon-theme lolcat cmatrix psensor htop btop glances xarchiver unzip p7zip-full pcmanfm gparted conky-all gthumb fastfetch lxpolkit lightdm-gtk-greeter firmware-linux firmware-linux-nonfree firmware-misc-nonfree -y

echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Paquetes Adicionales para un Sistema más Completo . . . \e[1;39;49m"
#Paquetes Más usados
sudo apt install synaptic chromium chromium-l10n libreoffice libreoffice-l10n-es gimp vlc kate okular tuxmath tuxtype -y

mkdir -p ~/.config/nitrogen


echo -e "\e[1;37;45m\* ㉿ ┼─┼┼┼─>> Copiando archivo de configuración de i3wm . . . \e[1;39;49m"
# Crear carpeta .config/i3 si no existe
mkdir -p ~/.config/i3
cp -f config ~/.config/i3/config


echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Comandos al archivo .bashrc del Usuario. . . \e[1;39;49m"
echo "


export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35m\][\u\[\033[01;33m\]㉿\[\033[01;34m\]\@][\[\033[01;33m\]\w\[\033[01;34m\]]\[\033[01;32m\]\$\n┼┼》\[\033[01;37m\]'

clear
fastfetch |lolcat

alias sh1='sudo nano -l -$ ~/.bashrc'
alias up='sudo apt update && sudo apt upgrade -y'
alias fa='clear && fastfetch |lolcat'
alias x='exit'
alias i='cd ~ && ls -la'
alias nanno='sudo nano -l -$'
alias i3='sudo nano -l -$  ~/.config/i3/config'" >> ~/.bashrc

#Mover archivos de configuración a la carpeta de Nitrogen - Fondo de Pantalla
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Archivos a la carpeta de Configuración de ROFI y LIGHTDM . . . \e[1;39;49m"
cp .conkyrc ~
sudo rm -rf *.rasi /usr/share/rofi/themes
sudo mv -f themes /usr/share/rofi
cp rofi ~/.config
sudo mv -f i3status.conf i3blocks.conf /etc
sudo mv -f lightdm-gtk-greeter.conf /etc/lightdm

#Mover archivos de configuración a la carpeta de Nitrogen - Pantalla
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Archivos a la carpeta de Config de NITROGEN . . . \e[1;39;49m"
sudo mv -f dbackgrounds backgrounds
sudo mv -f backgrounds /usr/share
cp bg-saved.cfg nitrogen.cfg ~/.config/nitrogen


# Configurar NetworkManager para que administre todas las tarjetas
sudo tee /etc/NetworkManager/conf.d/10-manage-all.conf << 'EOF'
[keyfile]
unmanaged-devices=none
EOF

# Activar y habilitar el servicio
sudo systemctl enable --now NetworkManager

#Terminando la Instalación
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Instalación Finalizada, modifique detalles menores en archivo /home/user/.config/i3/config y REINICIE EL EQUIPO . . . \e[1;39;49m"
