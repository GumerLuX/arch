#!/bin/bash 
clear
while :
do
echo -e "\e[36m===================================================\e[0m"
    echo    " Escoja el escritorio "xfce gnome kde cinnamon " "
    echo
    echo    "   1. xfce "
    echo    "   2. gnome"
    echo    "   3. plasma"
    echo    "   4. cinnamon"
    echo    "   5. Salir, si no quiere instalar un entorno grafico"
    echo
    echo -n "Seleccione una opcion [1 - 5]"
    echo
echo -e "\e[36m===================================================\e[0m"
    read opcion
    clear
    case $opcion in
        1) echo "Instalmos el escritorio xfce y lightdm. ";
          source xfce;;
        2) echo "Instalmos el escritorio gnome y gdm ";
          source gnome;;
        3) echo "Instalmos el escritorio Plasma Kde ";
          source plasma;;
        4) echo "Instalmos el escritorio cinnamon y lightdm ";
        source cinnamon;;
        5) echo "Presiona una enter para continuar...";
        exit;;
        *) echo "$opc No es correcto. Prueba otra vez";        
    esac
done