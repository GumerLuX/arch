#!/bin/bash

#version: 0.0
# https://github.com/SinLuX90/arch.git
#INSTALACION DEL KERNEL LINUX Y SISTEMA BASE
# instalacion del Kernel Linux
# Kernel  Ofiacialmente compatibles
clear
echo -e "\e[36m===================================================\e[0m"
echo -e "\e[1;34m Vamos a instalar el kernel Linux, Sistema Base, Base-Devel, Headers, Firmware y utilidades. \e[0m"
echo
echo		Tenemos 4º tipos de version de kernel en Arch-Linux-Base-Devel
echo
echo -e   1- La"\e[1;33m Estable \e[0m"— Versión vanilla. Se instala con:"~$\e[1;33m linux \e[0m""\e[1;34m Recomendado \e[0m"
echo        
echo -e   2- La"\e[1;33m Hardened \e[0m"— Enfocado en la seguridad. Se instala con:"~$\e[1;33m linux-hardened \e[0m"
echo
echo -e   3- La"\e[1;33m (LTS) \e[0m"— De larga duración. Se instala con:"~$\e[1;33m linux-lts \e[0m"
echo	
echo -e   4- La"\e[1;33m Kernel ZEN \e[0m"— Kernel mejorado, por hackers. Se instala con:"~$\e[1;33m linux-zen \e[0m""\e[1;34m Recomendado \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
echo -e      El"\e[1;32m Sistema Base, Base-Devel, Headers, Firmware \e[0m". Se instala con:
echo -e "~$\e[1;33m base base-devel linux-firmware \e[0m" para las cuatro es igual.
echo -e "\e[36m===================================================\e[0m"
echo -e      Las"\e[1;32m Linux Headers. \e[0m"Se instala con:
echo -e "~$\e[1;33m linux-headers linux-hardened-headers linux-lts-headers linux-zen-headers \e[0m"
echo -e "\e[36m===================================================\e[0m"
echo -e     Utilidades a instalar 
echo -e "~$\e[1;33m grub os-prober ntfs-3g networkmanager gvfs gvfs-afc gvfs-mtp xdg-user-dirs nano dhcpcd --noconfirm \e[0m"
echo -e "\e[36m===================================================\e[0m"
echo -e "   Recordar tenemos el disco montado /mnt/, hacemos la instalacion con este comando:"
echo -e "~$\e[1;33m pacstrap /mnt \e[0m" + el kernel, base, firmware y utilidades.
echo -e "\e[36m===================================================\e[0m"
echo -e   Ejemplo de instalacion con el kernel zen y utilidades: comandos a instalar
echo -e "$~\e[1;33m pacstrap /mnt base base-devel linux-zen linux-zen-headers linux-firmware grub os-prober ntfs-3g networkmanager gvfs gvfs-afc gvfs-mtp xdg-user-dirs nano dhcpcd --noconfirm \e[0m"
echo -e "\e[36m===================================================\e[0m"
bash
clear
