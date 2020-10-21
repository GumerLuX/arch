#!/bin/bash

## Instalacion y Configuracion de Bspwm


# Archivos necesarios para la instalacion BSPWM:
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "Instalando el escritorio Bspwm en \e[1;34mARCHLINUX\e[0m"
echo "
    Gestor de ventanas tipo mosaico 		-> bspwm
    Demonio de teclas de acceso rápido X 	-> sxhkd
    Display Manager (D.M)      				-> lightdm
    ===================================================
    Gestores de archivos       				-> Nemo -> Caja -> Pcmanfm -> Thunar 
    Terminales                 				-> tilix -> gnome-terminal
    Editor texto               				-> gedit -> kate-> pluma -> mousepad  -> Sublime Text 
    Lanzador aplicaciones      				-> rofi -> Albert
    Visualizador de imajenes				-> feh
    Gestor permite poner efectos, trans...	-> compton
    Navegador web              				-> firefox -> chromium
    Barra de escritorio, personalizable		-> polybar
    Terminal mas potente y configurable		-> Zsh

    # Utilidades
    Herramientas de compresión				-> p7zip ark file-roller xarchive
    Para descarga web						-> git -> wget
    Multimedia                              -> vlc
    "
echo -e "\e[36m===================================================\e[0m"
clear
echo
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Instalamos los archivos necesarios: \e[0m"
echo
        pacman -S git wget tilix gnome-terminal kate gedit rofi feh compton p7zip file-roller thunar  vlc firefox firefox-i18n-es-es chromium polybar
clear
## Corriendo bspwm "subimos al directorio de nuestro usuario" cd ~/
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Creamos ambas carpetas: \e[0m"
echo
        mkdir -p ~/.config/{bspwm,sxhkd}
        cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
        cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
        chmod u+x ~/.config/bspwm/bspwmrc
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo    -> creamos el archivo ~/.xinitrc si no lo tenemos
        touch ~/.xinitrc 
echo    -> Añadimos la siguientes lineas
echo "sxhkd &"'\n'"star bspwm" > ~/.xinitrc


echo
    "
        $ sudo mv Hack.zip /usr/share/fonts/
        $ sudo unzip Hack.zip
        $ sudo rm Hack.zip
    $ sudo pacman -S net-tools
        $ sudo pacman -S zsh           
                        $ sudo usermod --shell /usr/bin/zsh sindo
                        $ sudo su
sudo pacman -S lsd
    $ sudo mv ~/Descargas/lsd_0.17.0_amd64.deb /opt/
    sudo dpkg -i lsd_0.17.0_amd64.deb
    $  sudo rm /opt/lsd_0.17.0_amd64.deb
sudo pacman -S bat
    $ sudo mv ~/Descargas/bat_0.15.4_amd64.deb /opt/
    $ sudo dpkg -i bat_0.15.4_amd64.deb
    $ sudo rm /opt/bat_0.15.4_amd64.deb
        $ sudo su
    -> Instalacion del plugin sudo:
    -> Eligimos el que queremos, poe ej: "sudo" -> abrimos la pagina ;
    -> Abrimos el plugin, "sudo.plugin.zsh" copiamos la direccion "Raw" descargamos y descargamos con "wget":
    $ sudo su
    # mkdir zsh-sudo
    # cd zsh-sudo
    -> Descargamos el plugin sudo que hemos copiado:
    $ wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh
    -> Esto nos crara un script 'sudo.plugin.zsh'
    cat sudo.plugin.zsh
source /usr/share/zsh-sudo/sudo.plugin.zsh
    #$ sudo apt install i3lock-fancy imagemagick -y
    -> En el archivo sxhkdrc delante del comando ponemos 'gksudo'
sudo apt install scrub -y
        $ $ sudo pacman -S gpm
                $ sudo pacman -S xf86-input-synaptics
    "

