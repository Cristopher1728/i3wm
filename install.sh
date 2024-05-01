sudo apt update && sudo apt upgrade -y
sudo apt install i3 chromium chromium-l10n suckless-tools i3blocks lightdm nitrogen rofi lxappearance picom numlockx pulseaudio pulseaudio-utils pavucontrol arc-theme papirus-icon-theme blueman vokoscreen lolcat psensor polybar tilix neofetch htop btop glances xarchiver pcmanfm synaptic gparted libreoffice gimp vlc conky conky-all

sudo apt install curl && sudo curl -fsSLo /usr/share/keyrings brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt update && sudo apt install brave-browser

sudo wget https://github.com/Ulauncher/Ulauncher/releases/download/5.15.7/ulauncher_5.15.7_all.deb
sudo dpkg -i ulauncher_5.15.7_all.deb
sudo apt-get install -f

echo "" >> ~/.config/i3/config
echo "" >> ~/.config/i3/config
echo "" >> ~/.config/i3/config
echo "#Activar rofi ( rofi-theme-selector )" >> ~/.config/i3/config
echo "bindsym $mod+d exec --no-startup-id rofi -show drun -font 'hack 13' -show combi -icon-theme 'Papirus' -show-icons
" >> ~/.config/i3/config
echo "exec --no-startup-id picom" >> ~/.config/i3/config
echo "exec --no-startup-id nitrogen --restore" >> ~/.config/i3/config
echo "exec --no-startup-id polybar" >> ~/.config/i3/config
echo "exec --no-startup-id ulauncher" >> ~/.config/i3/config
echo "exec --no-startup-id conky" >> ~/.config/i3/config

echo "" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config
echo "alias x='exit'" >> ~/.config/i3/config

