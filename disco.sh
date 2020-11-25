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

#PARTICIONAR DISCO CON FDISK
clear
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "   ${greenColour} PARTICIONAMOS EL DISCO CON FDISK: ${fincolor}"
echo -e "
    Vamos a particionar el disco de nuestra máquina,
    Si sabéis lo que hacéis lo podéis hacer con el comando:${yellowColour} cfdisk${fincolor},
    o ${yellowColour}fdisk${fincolor} directamente, introduciendo el comando en la consola.
    
    Nosotros lo aremos con el comando fdisk, y estos serán los pasos a seguir.
"
echo -e "${blueColour}===================================================${fincolor}"
read -p "Press enter para continuar" 
# PASOS A SEGUIR
clear
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "   ${greenColour} PASOS A SEGUIR: ${fincolor}"
echo "
        1-	Identificamos el disco y lo anotamos
        2-	Lo formateamos a ms2 para poder utilizarlo
        3-	Creamos la partición boot y la activamos
        4-	Creamos la partición del sistema /
        5-	Creamos la partición swap
"
echo -e "${blueColour}===================================================${fincolor}"
read -p "Press enter para continuar" 
# CONFIRMAMOS NUESTRO DISCO
clear
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} CONFIRMAMOS NUESTRO DISCO: ${fincolor}"
echo "
    Desde aqui podeis editarlo manualmente, o seguir el tutorial.
    Con el comando fdisk –l identificamos nuestro disco “En este caso solo hay uno y será sda
    "
echo -e   Escrive:$  "${yellowColour} fdisk -l ${fincolor}" para comprobar el disco
echo
echo -e   Escrive:$  "${yellowColour} exit ${fincolor}" para continuar
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# IDENTIFICACION DE DISCO VARIABLE
clear
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} IDENTIFICACION DE DISCO CON VARIABLE: ${fincolor}"
echo "
    Tenemos nuestro disco identificado: 
    Lo formateamos a “ms2” para poder utilizarlo
    Introducimos el nombre del disco en el bash.
    "
sleep 2s
echo "Cual es el disco a convertir (ej: sda)"
# cremos la variable $disco
read disco
echo "
    Copiamos el resultado y lo pegamos en el bash$
    Tanto el "metodo 1" como el "metodo 2" son iguales de factibles:
    "
echo -e Metodo 1:$  "${yellowColour} (echo o; echo w) | fdisk /dev/$disco ${fincolor}"
echo -E Metodo 2:'$  echo -e "o\n w" | fdisk /dev/'$disco
bash
# CREAMOS LA PARTICION BOOT
clear
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} CREAMOS LA PARTICION BOOT Y LA ACTIVAMOS: ${fincolor}"
echo "
    Empezamos por la particion “boot”.
    Para la partición “boot” ponemos 500M de espacio,
    y lo hacemos con este comando.
"
sleep 2s
echo "Ponemos el tamaño de la particion boot (ej: 500M)"
# cremos la variable $disco
read p_boot
echo "
    Copiamos el resultado y lo pegamos en el bash$
    Tanto el "metodo 1" como el "metodo 2" son iguales de factibles:
    "   
echo -e Metodo 1:$  "${yellowColour} (echo n; echo p; echo 1; echo  ; echo +$p_boot; echo a; echo w;) | fdisk /dev/$disco ${fincolor}"
echo -E Metodo 2:'$  echo -e "n\np\n1\n\n+'$p_boot'\na\n w" | fdisk /dev/'$disco
bash
# CREAMOS LA PARTICION DEL SISTEMA
clear
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} CREAMOS LA PARTICION DEL SISTEMA /: ${fincolor}"
echo "
    Escogemos 27.5G de espacio para root /, copiamos el comando:
    "
sleep 2s
echo "Ponemos el tamaño de la particion / 'root' (ej: 27.5G)"
# cremos la variable $disco
read p_root
echo "
    Copiamos el resultado y lo pegamos en el bash$
    Tanto el "metodo 1" como el "metodo 2" son iguales de factibles:
    "

echo -e Metodo 1:$  "${yellowColour} (echo n; echo p; echo 2; echo  ; echo +$p_root; echo w;) | fdisk /dev/$disco ${fincolor}"
echo -E Metodo 2:'$  echo -e "n\np\n2\n\n+'$p_root'\n w" | fdisk /dev/'$disco
bash
# CREAMOS LA PARTICION SWAP
clear
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} CREAMOS LA PARTICION SWAP: ${fincolor}"
echo "
    Dejamos los espacios en blanco, para el tamaño.
    Por defecto coge el que queda, copiamos el comando:
    "
    sleep 2s
echo "Ponemos el tamaño para la particion swap o intercambio (ej: 2G)"
# cremos la variable $disco
read p_swap
echo "
    Copiamos el resultado y lo pegamos en el bash$
    Tanto el "metodo 1" como el "metodo 2" son iguales de factibles:
    "
echo -e Metodo 1:$  "${yellowColour} (echo n; echo p; echo 3; echo  ; echo $p_swap; echo t; echo 3; echo 82; echo w;) | fdisk /dev/$disco ${fincolor}"
echo -E Metodo 2:'$  echo -e "n\np\n3\n\n+'$p_swap' t\n3\n82\n w" | fdisk /dev/'$disco
bash
read -p "Press enter para continuar la instalacion + exit" 
exit
