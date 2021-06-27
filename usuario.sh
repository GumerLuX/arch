#!/bin/bash

#version: 0.3
# https://github.com/GumerLuX/arch.git
# 1r INICIO USUARIO
# Preparar root, usuario sudo codecs y xorg
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "   Bienvenido a la configuracion de \e[32mARCHLINUX\e[0m"
echo -e "   Creado por \e[32mGumerLuX\e[0m"
echo  
echo -e   "     \e[32m Vamos ha configurar el entorno del usuario: \e[0m"
echo
echo -e   1- Activando el NetworkManager y actualizando sistema.
echo -e   2- Ponemos el teclado en español
echo -e   3- Elegimos los mirrors mas rapidos de ArchLinux
echo -e   4- Instalacion de AURHelper y configurar color.
echo -e   5- Instalando el entorno grafico "'escritorio'"
echo
# Habilitar Network Manager y actualizamos git
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Havilitamos el NetworkManager y actualizamos git: \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m systemctl enable NetworkManager.service \e[0m"
echo -e   Escrive:$  "\e[1;33m sudo pacman -Syyu git \e[0m"
echo	  
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Ponemos el teclado en español
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Ponemos el teclado en español \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m localectl set-x11-keymap es \e[0m"
echo    "
    Este comando nos crea en la carpeta X11/xorg.conf un archivo de configuracion de nuestro teclado "00-keyboard.conf"
    Podemos comprovarlo abiendolo con cat.
        "
echo -e   Escrive:$  "\e[1;33m cat /etc/X11/xorg.conf.d/00-keyboard.conf \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Elegimos los mirrors mas rapidos de ArchLinux
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Elegimos los mirrors mas rapidos de ArchLinux \e[0m"
echo
echo -e "   Primero hacemos una copia de seguridad:"
echo
echo -e   Escrive:$  "\e[1;33m   sudo cp -vf /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup \e[0m"
echo
echo -e "   Instalamos el programa midiante un script:"
echo
echo -e   Escrive:$  "\e[1;33m   sudo pacman -S reflector \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Ordenamos los mirrorlist y actualizamos
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Con este comando ordenamos los mirrorlist y actualizamos lista \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m   sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist \e[0m"
echo
echo		  Sincronizamos lista
echo -e   Escrive:$  "\e[1;33m   sudo pacman -Syy \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Instalacion de AURHelper
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Instalacion de AURHelper \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m   git clone https://aur.archlinux.org/yay.git \e[0m"
echo -e   Escrive:$  "\e[1;33m   cd yay \e[0m"
echo -e   Escrive:$  "\e[1;33m   makepkg -si \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Configuracion de Pacman, color y ponemos el comococos en la barra
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Configuracion de Pacman, ponemos color y activamos el comococos de la barra\e[0m"
echo
echo -e   Escrive:$  "\e[1;33m editamos el archivo "/etc/pacman.conf" \e[0m"
echo    "
    Descomentamos el hastag de la linea #Color del archivo "/etc/pacman.conf"
    Añadimos al final del grupo color '"ILoveCandy"' sin comillas, las letras '"ILC"' son mayusculas.
    Desmarcamos las casillas de:
        [multilib]
        include /ete/pacman.d/mirrorlist
        "
echo -e   Escrive:$  "\e[1;33m sudo nano /etc/pacman.conf \e[0m"
echo
echo -e     Gurdamos y Salimos "Crtl + o y Crtl + x"
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Dar color a nano
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Dar color a nano: \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m sudo nano -l /etc/nanorc \e[0m"  "-l" para mostras Nº de linea:
echo -e   Descomentamos la linea:
echo -E   include "'/usr/share/nano/*.nanorc'"
echo    "
        Podemos hacerlo directamente desde consola con estos comandos:
        "
echo -e "\e[33m     sudo sed -i '/*.nanorc/s/^#//g' /etc/nanorc \e[0m"
echo -e "\e[33m     sudo sed -i '/set linenumbers/s/^#//g' /etc/nanorc \e[0m"
echo
echo -e     Gurdamos y Salimos "Crtl + o y Crtl + x"
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Instalando el entorno grafico "escritorio" 
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Instalando el entorno grafico, 'escritorio': \e[0m"
echo    "
        En Linux tenemos muchos entornos graficos:
        En este escript solo mostrare estos cinco, 
        'xfce gnome Plasma cinnamon bspwm'
        "
read -p "Press enter para elegir el escritorio"
./menu.sh
clear
# Pantalla de despedida
echo -e "\e[36m===================================================\e[0m"
echo -e "\e[36m===================================================\e[0m"
echo
echo -e  " \e[35m
        Con esto terminamos la instalacion de Arch Linux
        \e[0m "
sleep 2s
echo -e   " \e[35m
        Y la configuracion del escritorio basica
        \e[0m "
sleep 2s
echo -e   " \e[35m
        Espero que hayais tenido una buena experienccia
        Y allan aprendido algo...
        \e[0m "
sleep 2s
echo -e   " \e[35m
        Y saludos a todos..............
        \e[0m "
echo
echo
echo -e "\e[36m===================================================\e[0m"
echo -e "\e[36m===================================================\e[33m"
echo
read -p "       Presiona enter para reiniciar el sistema ó
       Crtl + C
       Para continuar en el sistema."
# BYE
echo -e "\n\nBBBBBB  YY    YY EEEEEEE"
 echo        "BB  BBB  YY YY   EE     "
 echo        "BB  BBB   YYY    EE     "
 echo        "BBBBBB    YYY    EEEEEE "
 echo        "BB  BBB   YYY    EE     "
 echo        "BB  BBB   YYY    EE     "
 echo -e     "BBBBBB    YYY    EEEEEEE\n\n"
 sleep 2s
reboot
