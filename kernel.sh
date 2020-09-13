#!/bin/bash

#version: 0.0
# https://github.com/SinLuX90/arch.git
#INSTALACION DEL KERNEL LINUX Y SISTEMA BASE
# instalacion del Kernel Linux
# Kernel  Ofiacialmente compatibles
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[1;34m Vamos a instalar el kernel Linux, Sistema Base, Base-Devel, Headers, Firmware y utilidades. \e[0m"
echo
echo		Tenemos 4º tipos de version de kernel en Arch-Linux-Base-Devel
echo
echo -e   1- La "\e[1;33m Estable \e[0m"— Versión vanilla del kernel y módulos.
echo -e  Comandos instalacion:"~$\e[1;33m linux base base-devel linux-headers linux-firmware \e[0m"
echo        
echo -e   2- La "\e[1;33m Hardened \e[0m"— Este kernel esta enfocado en la seguridad
echo -e  Comandos instalacion:"~$\e[1;33m linux-hardened base base-devel linux-hardened-headers linux-firmware \e[0m"
echo
echo -e   3- La "\e[1;33m (LTS) \e[0m"— Kernel de Linux y módulos con soporte de larga duración."\e[1;34m Recomendado \e[0m"
echo -e  Comandos instalacion:"~$\e[1;33m linux-lts base base-devel linux-lts-headers linux-firmware \e[0m"
echo	
echo -e   4- La "\e[1;33m Kernel ZEN \e[0m"— Es un Kernel mejorado, elavorado por varios hackers."\e[1;34m Recomendado \e[0m"
echo -e  Comandos instalacion:"~$\e[1;33m linux-zen base base-devel linux-zen-headers linux-firmware \e[0m"
echo
echo -e " Recordar tenemos el disco montado /mnt/
    Hacemos la instalacion con el comando \e[1;33m pacstrap /mnt \e[0m (+ el kernel elegido + utilidades)"
echo -e "\e[36m===================================================\e[0m"
echo -e   Utilidades a instalar $~"
\e[1;33mgrub os-prober ntfs-3g networkmanager gvfs gvfs-afc gvfs-mtp xdg-user-dirs nano dhcpcd --noconfirm \e[0m"
echo -e "\e[36m===================================================\e[0m"
echo -e   Ejemplo de instalacion con el kernel zen y utilidades: comandos a instalar $~"
\e[1;33mpacstrap /mnt base base-devel linux-zen linux-zen-headers linux-firmware grub os-prober ntfs-3g networkmanager gvfs gvfs-afc gvfs-mtp xdg-user-dirs nano dhcpcd --noconfirm \e[0m"
echo -e "\e[36m===================================================\e[0m"
bash
clear
