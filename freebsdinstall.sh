#!/bin/bash
# Creador: Cristhian Gabriel BONILLA BARRIOS <cristiano1728@gmail.com>
# Script que instala paquetes adicionales y pre-configura i3wm en Debian y Derivados.
#==============================================================\

#Iniciando Instalación . . .
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Inicinado Instalación de paquetes Necesarios . . . \e[1;39;49m"
#Paquetes basicos para el sistema
sudo pkg update && sudo pkg upgrade
sudo pkg install curl nitrogen rofi lxappearance picom numlockx pulseaudio pavucontrol papirus-icon-theme lolcat cmatrix polybar neofetch htop btop xarchiver pcmanfm conky gthumb telegram-desktop lightdm-gtk-greeter
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Paquetes Adicionales para un Sistema más Completo . . . \e[1;39;49m"
#Paquetes Más usados
sudo pkg install chromium libreoffice gimp vlc kate okular simplescreenrecorder ulauncher

nitrogen


echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Comandos al archivo CONFIG de i3wm . . . \e[1;39;49m"

echo "



bar {
	position top
        status_command i3status
        colors {
                # background #222222ff
                background #061b26
                statusline #ff7900
                separator #ff7900
                #                   border  backgr. text
                focused_workspace  #ff7900 #000000 #ff7900
                active_workspace   #333333 #5f676a #ffffff
                inactive_workspace #333333 #222222 #888888
                urgent_workspace   #2f343a #900000 #ffffff
        }
}


#bar {
#        mode dock
#        position top
#        status_command i3blocks
#        height 25
#        colors {
#            # background #222222ff
#            background #061b26
#            statusline #ff00ff
#            separator #186e97
#            #                   border  backgr. text
#            focused_workspace  #444444 #444444 #ff9f00
#            active_workspace   #333333 #5f676a #ffffff
#            inactive_workspace #333333 #222222 #888888
#            urgent_workspace   #2f343a #900000 #ffffff
#        }
#}

#Activar rofi ( seleccionar tema con: *rofi-theme-selector* )
bindsym mod+d exec --no-startup-id rofi -show drun -font 'hack 13' -show combi -icon-theme 'Papirus' -show-icons

#Paquetes que se ejecutan al Inicio
exec --no-startup-id lxpolkit
exec --no-startup-id picom
exec --no-startup-id nitrogen --restore
#exec --no-startup-id polybar
exec --no-startup-id ulauncher
exec --no-startup-id conky
exec --no-startup-id connman-gtk

#Ejecutar espaciado entre ventanas
gaps outer 2
gaps inner 7

#Grosor de las lineas de las ventanas
for_window [class='^.*'] border pixel 3

#class                            border         backgr.        text             indicador       child_border
client.focused                    #bf7500        #285577        #ffffff          #ff7900         #ff7900
client.focused_inactive           #33333         #5f676a        #ffffff          #484e50         #ff00ff
client.unfocused                  #333333        #222222        #888888          #292d2e         #4794cb
client.urgent                     #2f343a        #900000        #ffffff          #900000         #FF0000
client.placeholder                #000000        #0c0c0c        #ffffff          #000000         #00FFFF

client.background #ff00ff" >> ~/.config/i3/config


#Mover archivos de configuración a la carpeta de Nitrogen - Fondo de Pantalla
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Archivos a la carpeta de Configuración de ROFI y LIGHTDM . . . \e[1;39;49m"
mv .conkyrc ~
sudo rm -rf *.rasi /usr/share/rofi/themes
sudo mv -f themes /usr/share/rofi
mv rofi ~/.config
sudo mv -f i3status.conf i3blocks.conf /etc
sudo mv -f lightdm-gtk-greeter.conf /etc/lightdm

#Mover archivos de configuración a la carpeta de Nitrogen - Pantalla
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Insertando Archivos a la carpeta de Config de NITROGEN . . . \e[1;39;49m"
sudo mv -f dbackgrounds backgrounds
sudo mv -f backgrounds /usr/share
sudo mv -f bg-saved.cfg nitrogen.cfg ~/.config/nitrogen

cmatrix
neofetch |lolcat -as 500

#Terminando la Instalación
echo -e "\e[1;37;45m* ㉿ ┼─┼┼┼─>> Instalación Finalizada, modifique detalles menores en archivo /home/user/.config/i3/config y REINICIE EL EQUIPO . . . \e[1;39;49m"
