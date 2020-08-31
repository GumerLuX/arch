#!/bin/bash

#version: 0.0
# https://github.com/SinLuX90/install_Arch_script.git
#PARTICIONAR DISCO CON FDISK
clear
echo -e "\e[36m===================================================\e[0m"
echo -e "   \e[1;34m PARTICIONAR DISCO CON FDISK: \e[0m"
echo -e "
Vamos a particionar el disco de nuestra máquina,
si sabéis lo que hacéis lo podéis hacer con el comando:
\e[1;33m cfdisk \e[0m, o \e[1;33m fdisk \e[0m directamente, introduciendo el comando en la consola.
Nosotros lo aremos con el comando fdisk, y estos serán los pasos a seguir.
"
echo -e "\e[36m===================================================\e[0m"
read -p "Press enter para continuar" 
#PASOS A SEGUIR
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "   \e[1;34m Pasos a seguir: \e[0m"
echo "
        1-	Identificamos el disco y lo anotamos
        2-	Lo formateamos a ms2 para poder utilizarlo
        3-	Creamos la partición boot y la activamos
        4-	Creamos la partición del sistema /
        5-	Creamos la partición swap
"
echo -e "\e[36m===================================================\e[0m"
read -p "Press enter para continuar" 
#CONFIRMAMOS NUESTRO DISCO
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[1;34m Identificamos el disco y lo anotamos: \e[0m"
echo "
Desde aqui podeis editarlo manualmente, o seguir el tutorial.
Con el comando fdisk –l identificamos nuestro disco “En este caso solo hay uno y será sda
"
echo -e   Escrive:$  "\e[1;33m fdisk -l \e[0m" para comprobar el disco
echo
echo -e   Escrive:$  "\e[1;33m exit \e[0m" para continuar
echo -e "\e[36m===================================================\e[0m"
bash
clear
#IDENTIFICACION DE DISCO VARIABLE
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[1;34m Confirmamos el disco a combertir cuando pregunte: \e[0m"
echo "
    Lo formateamos a “ms2” para poder utilizarlo
    Introducimos el nombre del disco en el bash (como una variable).
"
sleep 5s
echo "Cual es el disco a convertir (ej: sda)"
#cremos la variable $disco
read disco
echo "
Copiamos el resultado y lo pegamos en el bash$
Tanto el "metodo 1" como el "metodo 2" son iguales de factibles:
"
echo -e Metodo 1:$  "\e[1;33m (echo o; echo w) | fdisk /dev/$disco \e[0m"
echo -E Metodo 2:'$  echo -e "o\n w" | fdisk /dev/'$disco
bash
#CREAMOS LA PARTICION BOOT
clear
echo -e "\e[36m===================================================\e[0m"
echo -e "\e[1;34m Creamos la partición boot y la activamos: \e[0m"
echo "
    Formateado nuestro disco vamos a crear las particiones, empezamos por la “boot”.
    Para la partición “boot” ponemos 500M de espacio, y lo hacemos con este comando.
" 
echo "
Copiamos el resultado y lo pegamos en el bash$
Tanto el "metodo 1" como el "metodo 2" son iguales de factibles:
"   
echo -e Metodo 1:$  "\e[1;33m (echo n; echo p; echo 1; echo  ; echo +500M; echo a; echo w;) | fdisk /dev/$disco \e[0m"
echo -E Metodo 2:'$  echo -e "n\np\n1\n\n+500M\na\n w" | fdisk /dev/'$disco
bash
#CREAMOS LA PARTICION DEL SISTEMA
clear
echo -e "\e[36m===================================================\e[0m"
echo -e "\e[1;34m Creamos la partición del sistema “/”: \e[0m"
echo "
    Escogemos 27.5G de espacio para root “/”, copiamos el comando:
"
echo "
Copiamos el resultado y lo pegamos en el bash$
Tanto el "metodo 1" como el "metodo 2" son iguales de factibles:
"
echo -e Metodo 1:$  "\e[1;33m (echo n; echo p; echo 2; echo  ; echo +27.5G; echo w;) | fdisk /dev/$disco \e[0m"
echo -E Metodo 2:'$  echo- e "n\np\n2\n\n+27.5G\n w" |fdisk /dev/'$disco
bash
#CREAMOS LA PARTICION SWAP
clear
echo -e "\e[36m===================================================\e[0m"
echo -e "\e[1;34m Por ultimo creamos la partición swap: \e[0m"
echo "
    Dejamos los espacios en blanco, para el tamaño.
    Por defecto coge el que queda, copiamos el comando:
"
echo "
Copiamos el resultado y lo pegamos en el bash$
Tanto el "metodo 1" como el "metodo 2" son iguales de factibles:
"
echo -e Metodo 1:$  "\e[1;33m (echo n; echo p; echo 3; echo  ; echo  ; echo t; echo 3; echo 82; echo w;) | fdisk /dev/$disco \e[0m"
echo -E Metodo 2:'$  echo- e "n\np\n3\n\n\n t\n3\n82\n w" |fdisk /dev/'$disco
bash
read -p "Press enter para continuar la instalacion" 
exit