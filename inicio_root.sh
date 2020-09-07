#!/bin/bash

#version: 0.0
# https://github.com/SinLuX90/install_Arch_script.git
# 1r INICIO
# Preparar root, usuario, sudo y xorg
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "Bienvenido a la configuracion de \e[32mARCHLINUX\e[0m"
echo -e "Creado por \e[32mSinLuX90\e[0m"
echo  
echo        Este escript funciona de esta manera:
echo
echo -e   1- Te muestra por pantalla el "\e[1;33m comando de este color \e[0m"  que tienes que escribir
echo      2- Te abre el terminal
echo      3- Introduces el comando
echo -e   4- Introduce "\e[1;33m exit \e[0m" y el script continuara.
echo -e   Recuerda escribe "\e[1;33m exit \e[0m" para continuar el script
echo
# #Habilitar Network Manager
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Havilitamos el NetworkManager: \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m systemctl start NetworkManager.service \e[0m"
echo -e   Escrive:$  "\e[1;33m systemctl enable NetworkManager.service \e[0m"
echo	  
echo -e "\e[36m===================================================\e[0m"
bash
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo	Tenemos nuestro Arch instalado y empezamos a configurarlo:
echo
echo -e "\e[32m Actualizamos sistema e instalmos el mousse para la consola \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m pacman -Syu gpm \e[0m"
echo -e   Escrive:$  "\e[1;33m systemctl start gpm.service \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Editamos sudoers, descomentand  #%wheel ALL=(ALL) ALL
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Editamos el archivo sudoers, y descomentanos  #%wheel ALL=(ALL) ALL: \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m nano /etc/sudoers \e[0m"
echo
echo -e		Guardamos "Ctrl+o" y Salimos "Crtl+x"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Instalamos codecs de audio
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Instalamos codecs de audio \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m pacman -S pulseaudio-alsa alsa-plugins alsa-utils \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Instalamos servidor grafico y mesa
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Instalamos servidor grafico mesa y la Grafica \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m pacman -S xorg-server xorg-xinit xorg xorg-apps mesa mesa-demos \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Comprobando el controlador de video
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Instalamos el controlador de video \e[0m"
echo      Si no savemos el que tenemos los buscamos con:
echo
echo -e   Escrive:$  "\e[1;33m lspci | grep VGA \e[0m" y anotamos.
echo
echo -e "Nota:Los Draivers propietarios los instalremos desde \e[32m Repositorio AUR \e[0m" cuando entremos como usuario.
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Instalamos los Controladores de video
echo -e "\e[36m===================================================\e[0m"
echo      Para tarjeta grafica AMD ponemos:
echo -e   Escrive:$  "\e[1;33m pacman -S xf86-video-amdgpu amd-ucode \e[0m"
echo
echo      Para tarjeta grafica NVIDIA ponemos:
echo -e   Escrive:$  "\e[1;33m pacman -S xf86-video-nouveau \e[0m"
echo
echo      Para tarjeta grafica ATI   
echo -e   Escrive:$  "\e[1;33m pacman -S xf86-video-ati \e[0m"
echo
echo -e   Para tarjeta grafica INTEL
echo -e   Escrive:$  "\e[1;33m pacman -S xf86-video-intel intel-ucode \e[0m"
echo
echo -e   Si utilizamos una MV "virtualbox"
echo -e   Escrive:$  "\e[1;33m pacman -S virtualbox-guest-utils \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Activando virtualbox 
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Si habeis instalado la grafica de virtualbox, la activamos \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m systemctl start vboxservice \e[0m"
echo -e   Escrive:$  "\e[1;33m systemctl enable vboxservice \e[0m"
echo
echo -e   Si no la veis instalado podeis omitirlo "\e[1;33m exit \e[0m" para continuar el script
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Ahora entraremos como usuario. \e[0m"
echo   "
Salimos de root con exit
"
echo -e "\e[36m===================================================\e[0m"
echo
read -p "Press enter para salir del script" 

#echo -e color mate"\e[31m Rojo \e[0m"		color brillante"\e[1;31m Rojo \e[0m"
#echo -e color mate"\e[32m Verde \e[0m"		color brillante"\e[1;32m Rojo \e[0m"
#echo -e color mate"\e[33m Amarillo \e[0m"	color brillante"\e[1;33m Rojo \e[0m"
#echo -e color mate"\e[34m Azul \e[0m"		color brillante"\e[1;34m Rojo \e[0m"
#echo -e color mate"\e[35m Cyan \e[0m"		color brillante"\e[1;35m Rojo \e[0m"
