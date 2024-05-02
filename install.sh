sudo apt update && sudo apt upgrade -y
sudo apt install i3 chromium chromium-l10n suckless-tools i3blocks lightdm nitrogen rofi lxappearance picom numlockx pulseaudio pulseaudio-utils pavucontrol arc-theme papirus-icon-theme blueman vokoscreen lolcat psensor polybar tilix neofetch htop btop glances xarchiver pcmanfm synaptic gparted libreoffice gimp vlc conky conky-all

sudo apt install curl && sudo curl -fsSLo /usr/share/keyrings brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt update && sudo apt install brave-browser

sudo wget https://github.com/Ulauncher/Ulauncher/releases/download/5.15.7/ulauncher_5.15.7_all.deb
sudo dpkg -i ulauncher_5.15.7_all.deb
sudo apt-get install -f -y

echo "


#Activar rofi ( rofi-theme-selector )
bindsym $mod+d exec --no-startup-id rofi -show drun -font 'hack 13' -show combi -icon-theme 'Papirus' -show-icons
echo "exec --no-startup-id picom" >> ~/.config/i3/config
echo "exec --no-startup-id nitrogen --restore" >> ~/.config/i3/config
echo "exec --no-startup-id polybar" >> ~/.config/i3/config
echo "exec --no-startup-id ulauncher" >> ~/.config/i3/config
echo "exec --no-startup-id conky" >> ~/.config/i3/config

echo "" >> ~/.config/i3/config
echo "#Ejecutar espaciado entre ventanas" >> ~/.config/i3/config
echo "gaps outer 0" >> ~/.config/i3/config
echo "gaps inner 7" >> ~/.config/i3/config

echo "" >> ~/.config/i3/config
echo "#Grosor de las lineas de las ventanas" >> ~/.config/i3/config
echo "for_window [class="^.*"] border pixel 3" >> ~/.config/i3/config

echo "" >> ~/.config/i3/config

echo "#class                                border            backgr.             text            indicador        child_border" >> ~/.config/i3/config

echo "client.focused                    #4c7899        #285577        #ffffff           #3BFF00          #3BFF00" >> ~/.config/i3/config

echo "client.focused_inactive     #33333          #5f676a         #ffffff           #484e50         #FF00FF" >> ~/.config/i3/config

echo "client.unfocused                #333333        #222222        #888888      #292d2e         #222222" >> ~/.config/i3/config

echo "client.urgent                      #2f343a         #900000        #ffffff          #900000         #FF0000" >> ~/.config/i3/config

echo "client.placeholder             #000000        #0c0c0c         #ffffff          #000000         #00FFFF" >> ~/.config/i3/config

echo "client.background #ffffff" >> ~/.config/i3/config

echo "" >> $PREFIX/etc/bash.bashrc
echo "" >> $PREFIX/etc/bash.bashrc
echo "" >> $PREFIX/etc/bash.bashrc
echo "clear" >> $PREFIX/etc/bash.bashrc
echo "neofetch |lolcat -as 500" >> $PREFIX/etc/bash.bashrc

echo "alias sh1='cd $PREFIX/etc && nano bash.bashrc'" >> $PREFIX/etc/bash.bashrc

echo "alias up='pkg upd && pkg upg -y'" >> $PREFIX/etc/bash.bashrc

echo "alias ne='clear && neofetch |lolcat -as 250'" >> $PREFIX/etc/bash.bashrc

echo "alias x='exit'" >> $PREFIX/etc/bash.bashrc

echo "alias i='cd ~ && ls -l'" >> $PREFIX/etc/bash.bashrc

clear
cmatrix
neofetch |lolcat -as 500

echo ""
""
""
"clear"
"neofetch |lolcat -as 500" > $PREFIX/etc/bash.bashrc