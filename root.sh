#!/bin/bash

#version: 0.3
# https://github.com/GumerLuX/arch.git
# 1r INICIO ROOT
# Preparar root, usuario sudo codecs y xorg

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

clear
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo -e "   Bienvenido a la configuracion de ${greenColour}ARCHLINUX${endColour}"
echo -e "   Creado por ${greenColour}GumerLuX${endColour}"
echo  
echo -e   "     ${greenColour} Vamos ha configurar el entorno root: ${endColour}"
echo
echo -e   1- Habilitar Network Manager, para poder tener la red.
echo      2- Actualizamos sistema e instalmos el mousse
echo -e   3- Editamos sudoers, descomentamos  `#%wheel ALL=(ALL) ALL`
echo -e   4- Instalamos codecs de audio.
echo -e   5- Instalamos servidor grafico, video  y mesa
echo
# Habilitar Network Manager
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo -e "${greenColour} Havilitamos el NetworkManager para poder tener red: ${endColour}"
echo
echo -e   Escrive:$  "${yellowColour} systemctl start NetworkManager.service ${endColour}"
echo -e   Escrive:$  "${yellowColour} systemctl enable NetworkManager.service ${endColour}"
echo	  
echo -e "${turquoiseColour}===================================================${endColour}"
bash
clear
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo	Tenemos nuestro Arch instalado y empezamos a configurarlo:
echo
echo -e "${greenColour} Actualizamos sistema e instalmos el mousse para la consola ${endColour}"
echo -e "${grayColour}Y lo avtvamos con systemectl\n${endColour}"
echo -e   Escrive:$  "${yellowColour} pacman -Syu gpm ${endColour}"
echo -e   Escrive:$  "${yellowColour} systemctl start gpm.service ${endColour}"
echo
echo -e "${turquoiseColour}===================================================${endColour}"
bash
clear
# Editamos sudoers, descomentand  #%wheel ALL=(ALL) ALL
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo -e "${greenColour} Editamos el archivo sudoers, y descomentanos  #%wheel ALL=(ALL) ALL: ${endColour}"
echo
echo -e   Escrive:$  "${yellowColour} nano /etc/sudoers ${endColour}"
echo
echo -e		Guardamos "Ctrl+o" y Salimos "Crtl+x"
echo
echo -e "${turquoiseColour}===================================================${endColour}"
bash
clear
# Instalamos codecs de audio
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo -e "${greenColour} Instalamos codecs de audio ${endColour}"
echo
echo -e   Escrive:$  "${yellowColour} pacman -S pulseaudio-alsa alsa-plugins alsa-utils ${endColour}"
echo
echo -e "${turquoiseColour}===================================================${endColour}"
bash
clear
# Instalamos servidor grafico y mesa
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo -e "${greenColour} Instalamos servidor grafico mesa y la Grafica ${endColour}"
echo
echo -e   Escrive:$  "${yellowColour} pacman -S xorg xorg-xinit mesa mesa-demos ${endColour}"
echo        "
            xorg-server         --> Se encuentra dentro de xorg
            xorg-apps           --> Se encuentra dentro de xorg
            "
echo -e "${turquoiseColour}===================================================${endColour}"
bash
clear
# Comprobando el controlador de video
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo -e "${greenColour} Instalamos el controlador de video ${endColour}"
echo
echo      Si no savemos el que tenemos los buscamos con:
echo
echo -e   Escrive:$  "${yellowColour} lspci | grep VGA ${endColour}" y anotamos.
echo
echo -e "${turquoiseColour}===================================================${endColour}"
bash
clear
# Instalamos los Controladores de video
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo      Para tarjeta grafica AMD ponemos:
echo -e   Escrive:$  "${yellowColour} pacman -S xf86-video-amdgpu amd-ucode ${endColour}"
echo
echo -e   Para tarjeta grafica NVIDIA ponemos: "\e[1;35m solo uno ${endColour}"
echo -e   Escrive:$  "${yellowColour} pacman -S xf86-video-nouveau ${endColour}" ---libre
echo -e   Escrive:$  "\e[1;31m pacman -S nvidia nvidia-settings ${endColour}" ---propietario 
echo
echo      Para tarjeta grafica ATI   
echo -e   Escrive:$  "${yellowColour} pacman -S xf86-video-ati ${endColour}"
echo
echo -e   Para tarjeta grafica INTEL
echo -e   Escrive:$  "${yellowColour} pacman -S xf86-video-intel intel-ucode ${endColour}"
echo
echo -e   Si utilizamos una MV "virtualbox" "\e[1;35m los dos ${endColour}"
echo -e   Escrive:$  "${yellowColour} pacman -S virtualbox-guest-utils xf86-video-wmware ${endColour}"
echo
echo -e "${turquoiseColour}===================================================${endColour}"
bash
clear
# Activando virtualbox 
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo -e "${greenColour} Si habeis instalado la grafica de virtualbox, la activamos ${endColour}"
echo
echo -e   Escrive:$  "${yellowColour} systemctl start vboxservice ${endColour}"
echo -e   Escrive:$  "${yellowColour} systemctl enable vboxservice ${endColour}"
echo
echo -e   Si no la veis instalado podeis omitirlo "${yellowColour} exit ${endColour}" para continuar el script
echo
echo -e "${turquoiseColour}===================================================${endColour}"
bash
clear
echo -e "${turquoiseColour}===================================================${endColour}"
# COPIAMOS EL ESCRIPT DE INSTALACION
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo -e "${greenColour} Copiamos el script de instalacion al directorio de usuario ${endColour}"
echo
echo   "Copiamos el script de instalacion, retrocedemos un directorio
        Pon en mombre de tu usuario:"
read usuario
echo
echo -e   Escrive 1:$  "${yellowColour} cd .. ${endColour}"
echo -e   Escrive 2:$  "${yellowColour} cp -rp arch /mnt/home/$usuario ${endColour}"
echo
echo -e "${turquoiseColour}===================================================${endColour}"
bash
clear
echo   Copiamos el script de instalacion al directorio de usuario
# Salimos de script y root
echo -e "${turquoiseColour}===================================================${endColour}"
echo
echo -e "${greenColour} Ahora entraremos como usuario. ${endColour}"
echo   "
        Al entrar como ususrio abre el directorio del script y lo lanzas
        
        $ ls				-> Comprovamos el directorio
        $ cd arch			-> Entramos en el, y lanzamos el script
        $ ./usuario.sh
        
        Salimos de root con exit
       "
echo -e "${turquoiseColour}===================================================${endColour}"
echo
read -p "Press enter para salir del script"
