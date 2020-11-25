#!/bin/bash

#version: 0.3
# https://github.com/SinLuX90/arch.git

#Colours
greenColour="\e[0;32m\033[1m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"
endColour="\033[0m\e[0m"
fincolor="\e[0m"
clear
echo -e "${turquoiseColour}===================================================${endColour}"
echo -e "${blueColour} Vamos a instalar el kernel Linux, Sistema Base, Base-Devel, Headers, Firmware y utilidades. ${endColour}"
echo -e      "  ${turquoiseColour}1º Instalamos el Kernel y las Headers${endColour}"   
echo	Tenemos 4º tipos de version de kernel en Arch-Linux-Base-Devel
echo -e   1- "La${yellowColour} Estable ${endColour}— Versión vanilla. Se instala con:
          ~${yellowColour} linux linux-headers${endColour} ${blueColour} Recomendado ${endColour}"
echo -e   2- "La${yellowColour} Hardened ${endColour}— Enfocado en la seguridad. Se instala con:
          ~${yellowColour} linux-hardened linux-hardened-headers${endColour}"
echo -e   3- "La${yellowColour} (LTS) ${endColour}— De larga duración. Se instala con:
          ~${yellowColour} linux-lts linux-lts-headers${endColour} ${blueColour} en PCs. antiguos. ${endColour}"
echo -e   4- "La${yellowColour} Kernel ZEN ${endColour}— Kernel mejorado, por hackers. Se instala con:
          ~${yellowColour} linux-zen linux-zen-headers${endColour} ${blueColour} Recomendado ${endColour}"
echo -e "${turquoiseColour}===================================================${endColour}"
echo -e      "  ${turquoiseColour}2º Instalamos el Sistema Base, Base-Devel, Firmware${endColour}"
echo -e   2º "El Sistema ${greenColour} Base, Base-Devel, Firmware. ${endColour}Se instala con:
          ~${yellowColour} base base-devel linux-firmware${endColour}" para las cuatro es igual.
echo -e "${turquoiseColour}===================================================${endColour}"
echo -e      "  ${turquoiseColour}3º  Utilidades a instalar.${endColour}"
echo -e      "~${yellowColour} grub os-prober ntfs-3g networkmanager gvfs gvfs-afc gvfs-mtp xdg-user-dirs nano dhcpcd --noconfirm ${endColour}"
echo -e "${turquoiseColour}===================================================${endColour}"
echo -e    3º - Recordar tenemos el disco montado /mnt/, hacemos la instalacion con este comando:
echo -e "~${yellowColour} pacstrap /mnt ${endColour}" + el kernel, base, firmware, Headers y utilidades.
echo -e "${turquoiseColour}===================================================${endColour}"
echo -e   Ejemplo de instalacion con el kernel zen y utilidades: comandos a instalar
echo -e "~${yellowColour} pacstrap /mnt base base-devel linux-zen linux-zen-headers linux-firmware grub os-prober ntfs-3g networkmanager gvfs gvfs-afc gvfs-mtp xdg-user-dirs nano dhcpcd --noconfirm ${endColour}"
echo -e "${turquoiseColour}===================================================${endColour}"
bash
clear