#!/usr/bin/env bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

# INSTALAR ZSH BSPWM ARCH LINUX
## Vamos a instalar un nuevo terminal mas avanzado, el Zsh.
clear
# (1)Instalando zsh
echo -e ${blueColour}'\n   Instalando zsh'${endColour}
echo -e ${greenColour}'\n   Instalamos el terminal zsh'${endColour}
echo -e ${yellowColour}'
sudo pacman -Sy zsh --noconfirm
yay -Sy dpkg --noconfirm
'${endColour}
read -p "Press enter para continuar"
    sudo pacman -Sy zsh --noconfirm
    yay -Sy dpkg
    clear

# (2)Instalacion de tema powerlevel10k
echo -e ${blueColour}'\n   Instalacion de tema powerlevel10k'${endColour}
echo -e ${greenColour}'\n   Instalamos desde AUR'${endColour}
echo -e ${yellowColour}'
yay -Sy --noconfirm zsh-theme-powerlevel10k-git --noconfirm
sudo echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
'${endColour}
read -p "Press enter para continuar"
    yay -Sy --noconfirm zsh-theme-powerlevel10k-git --noconfirm
    sudo echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
    clear

# (3)Configurando zsh usuario
echo -e ${blueColour}'\n   Configurando zsh usuario'${endColour}
echo -e ${greenColour}'\n   Configurando zsh en el terminal'${endColour}
echo -e ${yellowColour}'
Estas son las configuraciones que uso. Anotarlas en un papel
1-yes, 2-yes, 3-yes -> Este grupo es de visualizacion, si no es yes se vera mal.
4-3(Raibon), 5-1(Unicode), 6-1(24H), 7-1 (Anglet/), 8-2(Blurred)
9-2(Blurred), 10-1(una linea), 11-2(Sparce), 12-2(many icons), 13-2(Fluent),
14-n(No), 15-1(off), 16-y(yes), 17-y(yes) Aplicar cambios a .zshrc
'${endColour}
    echo -e Escrivimos en el terminal${yellowColour}' zsh'${endColour} y lo configuramos,'\n' ${yellowColour}exit${endColour} para salir'\n'
    read -p "Press enter para continuar"
    bash
    clear    
    
# (4)Configurando zsh root
echo -e ${blueColour}'\n   Configurando zsh root'${endColour}
echo -e ${greenColour}'\n   Configurando zsh en el terminal'${endColour}
echo -e ${yellowColour}'
Repetimos los pasos de usuario pero como root
ponemos en la terminal:
sudo su -> passwor 
zsh     -> editamos
\n'${endColour}
    echo -e Escrivimos en el terminal${yellowColour}' zsh'${endColour} y lo configuramos,'\n' ${yellowColour}exit${endColour} para salir'\n'
    read -p "Press enter para continuar"
    bash
    clear
    
# (5) Cambiamos el la shell bash por la zsh
echo -e ${blueColour}'\n   Cambiamos la shell bash por la zsh'${endColour}
echo -e ${greenColour}'\n   Hay que hacerlo tanto en nuestro usuario como el de root'${endColour}
echo -e ${yellowColour}'
sudo usermod --shell /usr/bin/zsh sindo
sudo usermod --shell /usr/bin/zsh root
\n'${endColour}
read -p "Press enter para continuar"
    sudo usermod --shell /usr/bin/zsh sindo
    sudo usermod --shell /usr/bin/zsh root
    clear

# (6) Instalamos los plugins lsd, bat y fzf
echo -e ${blueColour}'\n   Instalamos los plugins lsd, bat y fzf'${endColour}
echo -e ${greenColour}'\n   titulo2'${endColour}
echo -e ${yellowColour}'
sudo pacman -Sy lsd bat fzf --noconfirm
\n'${endColour}
read -p "Press enter para continuar"
    sudo pacman -Sy lsd bat fzf --noconfirm
    clear

# (7) Añadimos plugins a zsh-autosuggestions
echo -e ${blueColour}'\n   Añadimos plugins a zsh-autosuggestions'${endColour}
echo -e ${greenColour}'\n   Descargamoslos plugins con pacman y les damos permisos de usuario.'${endColour}
echo -e ${yellowColour}'
sudo pacman -S zsh-autosuggestions
sudo pacman -S zsh-syntax-highlighting
sudo chown sindo:sindo -R /usr/share/zsh/plugins/zsh-autosuggestions
sudo chown sindo:sindo -R /usr/share/zsh/plugins/zsh-syntax-highlighting
\n'${endColour}
read -p "Press enter para continuar"
    sudo pacman -S zsh-autosuggestions
    sudo pacman -S zsh-syntax-highlighting
    sudo chown sindo:sindo -R /usr/share/zsh/plugins/zsh-autosuggestions
    sudo chown sindo:sindo -R /usr/share/zsh/plugins/zsh-syntax-highlighting
    clear
    
# (8) Instalacion del plugin sudo:
echo -e ${blueColour}'\n   Instalacion del plugin sudo:'${endColour}
echo -e ${greenColour}'\n   Instalamos el plugin sudo'${endColour}
echo -e ${yellowColour}'
Creamos una carpeta en /usr/share/zsh-sudo. Y movemos el plugin descargado.
sudo mkdir /usr/share/zsh-sudo
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh
sudo mv sudo.plugin.zsh /usr/share/zsh-sudo
\n'${endColour}
read -p "Press enter para continuar"
    sudo mkdir /usr/share/zsh-sudo
    wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh
    sudo mv sudo.plugin.zsh /usr/share/zsh-sudo
    clear

    
# (9) Para finalizar copiamos de nuevo los archivos zshrc y p10k-zsh
echo -e ${blueColour}'\n   Para finalizar copiamos de nuevo los archivos zshrc y p10k-zsh'${endColour}
echo -e ${greenColour}'\n   Modificamos los archivos descargaso.'${endColour}
echo -e ${yellowColour}'
cp ~/arch/zsh/.zshrc ~/.zshrc
cp ~/arch/zsh/.p10k.zsh ~/.p10k.zsh
sudo rm /root/.zshrc
sudo ln -s -f /home/sindo/.zshrc /root/.zshrc
\n'${endColour}
echo -e Eliminamos el archivo${yellowColour}'.zshrc de root\n'${endColour} y hacemos un , ${yellowColour}enlace simbolico${endColour} a nuestro usuario
read -p "Press enter para continuar"
    cp ~/arch/zsh/.zshrc ~/.zshrc
    cp ~/arch/zsh/.p10k.zsh ~/.p10k.zsh
    sudo rm /root/.zshrc
    sudo ln -s -f /home/sindo/.zshrc /root/.zshrc
    clear
    
read -p "fin de la instalacion enter para salir"




