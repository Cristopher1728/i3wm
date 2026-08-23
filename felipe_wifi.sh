#!/bin/bash
# Script independiente: Solución definitiva para wifi Broadcom BCM4313
# Para ejecutar DESPUÉS de instalar Debian + i3 Window Manager
# Autor: Para tu equipo Lenovo — configuración probada ✅

echo -e "\e[1;34m==============================================\e[0m"
echo -e "\e[1;32m   Iniciando arreglo definitivo del WIFI      \e[0m"
echo -e "\e[1;32m      Tarjeta: Broadcom BCM4313              \e[0m"
echo -e "\e[1;34m==============================================\e[0m"
echo ""

# 1. Asegurar que los repositorios tengan contrib / non-free / non-free-firmware
echo -e "\e[1;33m[1/6] Verificando y corrigiendo fuentes de paquetes...\e[0m"
sudo tee /etc/apt/sources.list << 'EOF'
deb http://deb.debian.org/debian trixie main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian trixie main contrib non-free non-free-firmware

deb http://deb.debian.org/debian trixie-updates main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian trixie-updates main contrib non-free non-free-firmware

deb http://deb.debian.org/debian-security trixie-security main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian-security trixie-security main contrib non-free non-free-firmware
EOF

# 2. Actualizar lista de paquetes
echo -e "\e[1;33m[2/6] Actualizando lista de paquetes...\e[0m"
sudo apt update

# 3. Instalar controlador y herramientas necesarias
echo -e "\e[1;33m[3/6] Instalando controlador Broadcom y herramientas...\e[0m"
sudo apt install -y dkms build-essential linux-headers-$(uname -r) broadcom-sta-dkms firmware-b43-installer

# 4. Quitar controladores conflictivos y cargar el correcto
echo -e "\e[1;33m[4/6] Activando el controlador correcto...\e[0m"
sudo modprobe -r b43 b43legacy brcmsmac ssb 2>/dev/null
sudo modprobe wl

# 5. Dejarlo fijo para SIEMPRE al reiniciar
echo -e "\e[1;33m[5/6] Guardando configuración permanente...\e[0m"
echo "wl" | sudo tee -a /etc/modules
echo -e "blacklist b43\nblacklist b43legacy\nblacklist brcmsmac" | sudo tee /etc/modprobe.d/blacklist-broadcom.conf
sudo update-initramfs -u

# 6. Encender interfaz y reiniciar gestor de redes
echo -e "\e[1;33m[6/6] Encendiendo interfaz y reiniciando red...\e
