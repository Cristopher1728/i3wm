#Iniciando Instalación . . .
echo "Inicinado Instalación de paquetes Necesarios . . . "
#Paquetes basicos para el sistema
sudo apt install curl nitrogen rofi lxappearance picom numlockx pulseaudio pulseaudio-utils pavucontrol arc-theme papirus-icon-theme lolcat cmatrix psensor polybar neofetch htop btop glances xarchiver pcmanfm synaptic gparted conky conky-all gthumb blueman lxpolkit telegram-desktop snapd
#Paquetes Más usados
sudo apt install chromium chromium-l10n libreoffice libreoffice-l10n-es gimp vlc notepadqq kate okular

nitrogen

#Instalación Whatsdesk
echo "Instalando de Whatsdesk"
sudo snap install core
sudo snap install whatsdesk

echo "Instalando BRAVE BROWSER . . ."
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update
sudo apt install brave-browser

echo "Instalando ULAUNCHER . . ."
sudo apt update && sudo apt install -y gnupg
gpg --keyserver keyserver.ubuntu.com --recv 0xfaf1020699503176
gpg --export 0xfaf1020699503176 | sudo tee /usr/share/keyrings/ulauncher-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/ulauncher-archive-keyring.gpg] \
          http://ppa.launchpad.net/agornostal/ulauncher/ubuntu jammy main" \
          | sudo tee /etc/apt/sources.list.d/ulauncher-jammy.list
sudo apt update && sudo apt install ulauncher

echo "


#Activar rofi ( rofi-theme-selector )
bindsym mod+d exec --no-startup-id rofi -show drun -font 'hack 13' -show combi -icon-theme 'Papirus' -show-icons
exec --no-startup-id lxpolkit
exec --no-startup-id picom
exec --no-startup-id nitrogen --restore
exec --no-startup-id polybar
exec --no-startup-id ulauncher
exec --no-startup-id conky

#Ejecutar espaciado entre ventanas
gaps outer 0
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

echo "


clear
neofetch |lolcat -as 500

alias sh1='sudo nano -l -$ ~/.bashrc'
alias up='sudo apt update && sudo apt upgrade -y'
alias ne='clear && neofetch |lolcat -as 500'
alias x='exit'
alias i='cd ~ && ls -la'
alias nanno='sudo nano -l -$'
alias i3='sudo nano -l -$  ~/.config/i3/config'" >> ~/.bashrc

mv .conkyrc ~

#Estableciendo Fondo de Pantalla
sudo mv backgrounds /usr/share
sudo mv bg-saved.cfg nitrogen.cfg ~/.config/nitrogen

cmatrix
neofetch |lolcat -as 500

#Terminando la Instalación
echo "Instalación Finalizada, modifique detalles menores en archivo /home/user/config y reinicie el equipo ....."
