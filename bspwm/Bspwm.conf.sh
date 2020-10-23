#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

## Instalacion y Configuracion de Bspwm
# INSTALAR BSPWM ARCH LINUX
clear
echo -e ${blueColour} Archivos necesarios para la instalacion BSPWM:${endColour}
echo -e ${grayColour}"
Gestor de ventanas tipo mosaico         -> bspwm
Demonio de teclas de acceso rápido X    -> sxhkd
Display Manager (D.M)                   -> lightdm
Gestores de archivos                    -> Nemo -> Caja -> Pcmanfm -> Thunar 
Terminales                              -> tilix -> gnome-terminal
Editor texto                            -> gedit -> kate-> pluma -> mousepad  -> Sublime Text 
Lanzador aplicaciones                   -> rofi -> Albert
Visualizador de imajenes                -> feh
Gestor permite poner efectos, trans...  -> compton
Navegador web                           -> firefox -> chromium
Barra de escritorio, personalizable     -> polybar
Terminal mas potente y configurable     -> Zsh
"
echo -e ${blueColour} Utilidades ${endColour}"

Herramientas de compresión              -> p7zip ark file-roller xarchive
Para descarga web                       -> git -> wget
"${endColour}
## Empezamos....................................
echo -e "\e[36m===================================================\e[0m"
echo
echo -e " Estos son los programas que instalaremos para empezar:
    ${yellowColour}git wget tilix rofi p7zip file-roller thunar gedit vlc${endColour}
	"
echo -e ${blueColour} -> El resto de programas los instalaremos a medida que los necesitamos.${endColour}
echo
echo    Comandos de instalacion
echo
echo -e   Escrive:$  "\e[1;33m sudo pacman -S git wget tilix rofi p7zip file-roller thunar gedit vlc  \e[0m"
echo
echo -e   Recuerda escribe "\e[1;33m exit \e[0m" para continuar el script
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# 1º Instalar Bsmpw sxhkd Arch Linux:
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m 1º Instalar Bsmpw sxhkd Arch Linux: \e[0m"
echo
echo    Comandos de instalacion
echo
echo -e   Escrive:$  "\e[1;33m sudo pacman -S bspwm sxhkd  \e[0m"
echo
echo -e   Recuerda escribe "\e[1;33m exit \e[0m" para continuar el script
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# 2º Instalamos el Display Manager (D.M) gestor de inicio de sesion
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m 2º Instalamos el Display Manager (D.M) gestor de inicio de sesion \e[0m"
echo
echo    Comandos de instalacion
echo
echo -e   Escrive:$  "\e[1;33m sudo pacman -S lightdm lightdm-gtk-greeter \e[0m"
echo
echo -e   Recuerda escribe "\e[1;33m exit \e[0m" para continuar el script
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# 2º A-Activando el Display Manager (D.M) gestor de inicio de sesion
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m 2º A- Activamos el Display Manager (D.M) gestor de inicio de sesion \e[0m"
echo
echo    Comandos de instalacion
echo
echo -e   Escrive:$  "\e[1;33m systemctl enable lightdm.service \e[0m"
echo
echo -e   Recuerda escribe "\e[1;33m exit \e[0m" para continuar el script
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# 3º Corriendo bspwm "subimos al directorio de nuestro usuario" cd ~/
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Corriendo bspwm "subimos al directorio de nuestro usuario" cd ~/ \e[0m"
echo -e ${greenColour}    '\n-> Creamos ambas carpetas:'${endColour}
echo -e ${yellowColour}    mkdir -p ~/.config/{bspwm,sxhkd}${endColour}
echo -e ${greenColour}    '\n-> copiamos los ejemplos a dichas carpetas:'${endColour}
echo -e ${yellowColour}    cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/${endColour}
echo -e ${yellowColour}    cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/${endColour}
echo -e ${greenColour}    '\n-> damos permisos de ejecucion:'${endColour}
echo -e ${yellowColour}    chmod u+x ~/.config/bspwm/bspwmrc${endColour}
echo -e ${greenColour}    '\n-> creamos el archivo ~/.xinitrc si no lo tenemos'${endColour}
echo -e ${yellowColour}    touch ~/.xinitrc${endColour}
echo -e ${greenColour}    '\n-> Añadimos estas lineas a .xinitrc:'${endColour}
echo -e ${yellowColour}    'echo "sxhkd &" '\n'"exec bspwm" > ~/.xinitrc' ${endColour}
echo -e "\e[36m===================================================\e[0m"
bash
clearcat 