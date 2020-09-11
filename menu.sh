#!/bin/bash 
clear
while :
do
echo -e "\e[36m===================================================\e[0m"
    echo    " Escoja el escritorio "xfce gnome kde cinnamon " "
    echo    "   1. xfce "
    echo    "   2. gnome"
    echo    "   3. plasma"
    echo    "   4. cinnamon"
    echo    "   5. Salir"
    echo
    echo -n "Seleccione una opcion [1 - 5]"
    echo
echo -e "\e[36m===================================================\e[0m"
    read opcion
    case $opcion in
        1) "Instalmos el escritorio xfce. "
          source xfce;;
        2) "Instalmos el escritorio gnome "
          source gnome;;
        3) "Instalmos el escritorio Plasma Kde "
          source plasma;;
        4) "Instalmos el escritorio cinnamon "
        source cinnamon;;
        5) "Presiona una enter para continuar..."
        exit;;
        *) echo "$opc es una opcion invalida. Es tan dificil?";
    esac
done
