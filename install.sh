#!/bin/bash
# Creador: Cristhian Gabriel BONILLA BARRIOS <cristiano1728@gmail.com>
# Script que instala paquetes adicionales y pre-configura i3wm en Debian y Derivados.
#==============================================================\

#Iniciando Instalación . . .
echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Inicinado Instalación de paquetes Necesarios . . . \e[1;39;49m"
#Paquetes basicos para el sistema
sudo apt update && upgrade -y
sudo apt install curl nitrogen rofi lxappearance picom numlockx pulseaudio pulseaudio-utils pavucontrol arc-theme papirus-icon-theme lolcat cmatrix psensor polybar neofetch htop btop glances xarchiver pcmanfm synaptic gparted conky conky-all gthumb blueman lxpolkit telegram-desktop -y
echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Paquetes Adicionales para un Sistema más Completo . . . \e[1;39;49m"
#Paquetes Más usados
sudo apt install chromium chromium-l10n libreoffice libreoffice-l10n-es gimp vlc notepadqq kate okular simplescreenrecorder -y

nitrogen

echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Instalando BRAVE-BROWSER (Navegador Web que bloquea Anuncios Molestos). . . \e[1;39;49m"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update && upgrade -y
sudo apt install brave-browser -y

echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Instalando ULAUNCHER (Lanzador de Aplicaciones). . . \e[1;39;49m"
sudo apt update && sudo apt install -y gnupg
gpg --keyserver keyserver.ubuntu.com --recv 0xfaf1020699503176
gpg --export 0xfaf1020699503176 | sudo tee /usr/share/keyrings/ulauncher-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/ulauncher-archive-keyring.gpg] \
          http://ppa.launchpad.net/agornostal/ulauncher/ubuntu jammy main" \
          | sudo tee /etc/apt/sources.list.d/ulauncher-jammy.list
sudo apt update && sudo apt install ulauncher -y

echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Insertando Comandos al archivo CONFIG de i3wm . . . \e[1;39;49m"

echo "


#Activar rofi ( rofi-theme-selector )
bindsym mod+d exec --no-startup-id rofi -show drun -font 'hack 13' -show combi -icon-theme 'Papirus' -show-icons

#Paquetes que se ejecutan al Inicio
exec --no-startup-id lxpolkit
exec --no-startup-id picom
exec --no-startup-id nitrogen --restore
exec --no-startup-id polybar
exec --no-startup-id ulauncher
exec --no-startup-id conky

#Ejecutar espaciado entre ventanas
gaps outer 2
gaps inner 7

#Grosor de las lineas de las ventanas
for_window [class='^.*'] border pixel 3

#class                                border            backgr.             text            indicador        child_border

client.focused                    #4c7899        #285577        #ffffff           #3BFF00          #3BFF00

client.focused_inactive     #33333          #5f676a         #ffffff           #484e50         #FF00FF

client.unfocused                #333333        #222222        #888888      #292d2e         #222222

client.urgent                      #2f343a         #900000        #ffffff          #900000         #FF0000

client.placeholder             #000000        #0c0c0c         #ffffff          #000000         #00FFFF

client.background #ffffff" >> ~/.config/i3/config


echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Insertando Comandos al archivo .bashrc del Usuario. . . \e[1;39;49m"
echo "


export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35m\][\u\[\033[01;33m\]㉿\[\033[01;34m\]\@][\[\033[01;33m\]\w\[\033[01;34m\]]\[\033[01;32m\]\$\n┼┼》'

clear
neofetch |lolcat -as 500

alias sh1='sudo nano -l -$ ~/.bashrc'
alias up='sudo apt update && sudo apt upgrade -y'
alias ne='clear && neofetch |lolcat -as 500'
alias x='exit'
alias i='cd ~ && ls -la'
alias nanno='sudo nano -l -$'
alias i3='sudo nano -l -$  ~/.config/i3/config'" >> ~/.bashrc

sudo su
echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Insertando Comandos al archivo bash.bashrc de /etc. . . \e[1;39;49m"
echo "


export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35m\][\u\[\033[01;33m\]㉿\[\033[01;31m\]\@][\[\033[01;33m\]\w\[\033[01;31m\]]\$\n┼┼》\[\033[01;34m\]'

clear
neofetch |lolcat -as 500

alias sh1='sudo nano -l -$ ~/.bashrc'
alias up='sudo apt update && sudo apt upgrade -y'
alias ne='clear && neofetch |lolcat -as 500'
alias x='exit'
alias i='cd ~ && ls -la'
alias nanno='sudo nano -l -$'
alias i3='sudo nano -l -$  ~/.config/i3/config'" >> /etc/bash.bashrc

mv .conkyrc ~

#Mover archivos de configuración a la carpeta de Nitrogen - Pantalla
echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Insertando Archivos a la carpeta de Config de NITROGEN . . . \e[1;39;49m"
sudo mv backgrounds /usr/share
sudo mv bg-saved.cfg nitrogen.cfg ~/.config/nitrogen

cmatrix
neofetch |lolcat -as 500

#Terminando la Instalación
echo -e "\e[1;37;45m* 🌎 ┼─┼┼┼─>> Instalación Finalizada, modifique detalles menores en archivo /home/user/.config/i3/config y REINICIE EL EQUIPO . . . \e[1;39;49m"
