#!/bin/bash

#version: 0.0
# https://github.com/SinLuX90/Arch.git
# 1 INTRO
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "Bienvenido al instalador de \e[1;34mARCHLINUX\e[0m"
echo -e "Creado por \e[32mSinLuX90\e[0m"  
echo        Este escript funciona de esta manera:
echo
echo -e   1- Te muestra por pantalla el "\e[1;33m comando de este color \e[0m"  que tienes que escribir
echo      2- Te abre el terminal
echo      3- Introduces el comando + enter
echo -e   4- Introduce "\e[1;33m exit \e[0m" y el script continuara.
echo -e   Recuerda escribe "\e[1;33m exit \e[0m" para continuar el script
echo
echo -e "\e[36m===================================================\e[0m"
echo
# TECLADO
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Ponemos el teclado en español \e[0m"
echo
echo    Configuramos nuestro teclado
echo
echo -e   Escrive:$  "\e[1;33m loadkeys es \e[0m"
echo
echo -e   Recuerda escribe "\e[1;33m exit \e[0m" para continuar el script
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# ACTUALIZAR REPOSITORIOS E INSTALAR EL RATON DE CONSOLA
echo -e "\e[36m===================================================\e[0m"
echo
echo	Actualizamos los repositorios e instalmos el mousse para la consola  
echo    
echo -e   Escrive:$  "\e[1;33m pacman -Sy gpm \e[0m"     y luego exit
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo    Activamos los servicios del mousse para poder utilizarlo
echo
echo -e   Escrive:$  "\e[1;33m systemctl start gpm.service \e[0m"   si pide la contraseña: 'root'
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# LOCALIZAR DISCO
#    echo -e "\e[36m===================================================\e[0m"
#    echo
#    echo    Localizamos el disco para crear particiones
#    echo
#    echo -e   Escrive:$  "\e[1;33m fdisk -l \e[0m" podemos poner '| more' si teneis muchos discos
#    echo
#    echo -e "\e[36m===================================================\e[0m"
#    bash
#    clear
# EDITAR DISCO LANZAR SCRIPT
echo -e "\e[36m===================================================\e[0m"
echo
echo    Tenemos un disco de 30G en nuestra MV.
echo    Y vamos ha particionamarlo asi:
echo
echo -e   .     "1º  particion     boot    500M        -Particion de arranque"
echo -e   .     "2º  particion     /       27.5G       -Particion del sistema"
echo -e   .     "3º  particion     swap    2G          -Particion de memoria intercambio"
echo
echo -e  Lanzamos el script: "\e[1;33m disco2.sh \e[0m" para editarlo.
echo
echo -e  Escrive:$  "\e[1;33m sh disco2.sh o ./disco.sh\e[0m" 	
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# FORMATEAR PARTICION BOOT
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "   \e[1;34m Continuamos con el script de insrtalacion: \e[0m"
echo
echo    Formateamos la particion boot
echo
echo "Cual es el disco a formatear (ej: sda1)"
echo
#cremos la variable $disco1
read disco1
echo
echo -e   Escrive:$  "\e[1;33m mkfs.ext2 /dev/$disco1 \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# FORMATEAR PARTICION SISTEMA /
echo -e "\e[36m===================================================\e[0m"
echo
echo    Formateamos la particion sistema /
echo
echo "Cual es el disco a formatear (ej: sda2)"
echo
#cremos la variable $disco2
read disco2
echo
echo -e   Escrive:$  "\e[1;33m mkfs.ext4 /dev/$disco2 \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# FORMATEAR PARTICION HOME
#echo -e "\e[36m===================================================\e[0m"
#echo    Formateamos la particion home
#echo
#echo -e   Escrive:$  "\e[1;33m mkfs.ext4 /dev/sda4 \e[0m"
#echo -e "\e[36m===================================================\e[0m"
#bash
#clear
# FORMATEAR PARTICION SWAP Y MONTAMOS
echo -e "\e[36m===================================================\e[0m"
echo
echo    Formateamos la particion swap y montamos
echo
echo "Cual es el disco a formatear (ej: sda3)"
#cremos la variable $disco3
read disco3
echo
echo -e   Escrive:$  "\e[1;33m mkswap /dev/$disco3 \e[0m"
echo -e   Escrive:$  "\e[1;33m swapon /dev/$disco3 \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# MONTAMOS LA PARTICION DEL SISTEMA
echo -e "\e[36m===================================================\e[0m"
echo
echo    Montamos las particion del sistema /mnt
echo
echo -e   Escrive:$  "\e[1;33m mount /dev/$disco2 /mnt \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# CREAR DIRECTORIOS {BOOT HOME} MONTAMOS
echo -e "\e[36m===================================================\e[0m"
echo
echo    Creamos el directorio boot y montamos en /mnt
echo
echo -e   Escrive:$  "\e[1;33m mkdir /mnt/boot /mnt \e[0m"
echo -e   Escrive:$  "\e[1;33m mount /dev/$disco1 /mnt/boot \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Instalando el Sistema Base
echo -e "\e[36m===================================================\e[0m"
echo
echo    Instalando el Kernel Linux y Sistema Base
echo
echo    Llamamos al script de instalacion del Kernel:
echo -e   Escrive:$  "\e[1;33m ./kernel.sh \e[0m"
#echo -e   Escrive:$  "\e[1;33m pacstrap /mnt base base-devel grub os-prober ntfs-3g networkmanager gvfs gvfs-afc gvfs-mtp xdg-user-dirs linux linux-firmware nano dhcpcd \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Generar fstab
echo -e "\e[36m===================================================\e[0m"
echo
echo    Instalando el Sistema Base: 'Generar fstab'
echo
echo -e   Escrive:$  "\e[1;33m genfstab -pU /mnt >> /mnt/etc/fstab \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
## Entrar en el sistema base #########################
# Creando hostname
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema con arch-chroot:
echo
echo    Creando nombre del sistema 'hostname'
echo
echo -e "\e[36m===================================================\e[0m"
echo "Cual es el nombre de tu PC (ej: SinLuX)"
#cremos la variable $PC
read PC
echo
echo -e   Escrive:$  "\e[1;33m echo $PC > /mnt/etc/hostname \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Establecer la zona horaria
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema
echo
echo    Establecer la zona horaria 'Creamos un link de nuestra zona horaria'
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt ln -s /usr/share/zoneinfo/Europe/Madrid /etc/localtime \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# borrar el # en el siguiente enunciado es_ES.UTF-8 UTF-8
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema Locales
echo
echo -e   borrar el '# en el siguiente enunciado es_ES.UTF-8 UTF-8'
echo
echo -e   Escrive:$  "\e[1;33m  nano /mnt/etc/locale.gen \e[0m"
echo
echo      Guardar el archivo (Ctrl+o)
echo      Para salir (Ctrl+x)
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Difiniendo el lenguaje = idioma
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema: Difiniendo el lenguaje = idioma
echo
echo -e   Escrive:$  "\e[1;33m echo LANG=es_ES.UTF-8 > /mnt/etc/locale.conf \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Generando locales
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema: Generando locales
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt locale-gen \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Configurar el reloj de hardware
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema: Configurar el reloj de hardware
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt hwclock -w \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Configurar el teclado
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema: Configurar el teclado 'keyboard'
echo
echo -e   Escrive:$  "\e[1;33m echo KEYMAP=es > /mnt/etc/vconsole.conf \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Instalar grub
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema: Instalar el arranque grub
sleep 3s
echo
echo    'En que disco vas a instalar el cargador de arranque (ej: sda)'
#cremos la variable $disco4
read disco4
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt grub-install /dev/$disco4 \e[0m"
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Os prover
#echo -e "\e[36m===================================================\e[0m"
#echo    Configurando el sistema: Os prober "si no detecta el sistema"
#echo    O teneis mas de un sistema y no os a salido#echo
#echo
#echo -e   Escrive:$  "\e[1;33m os-prober \e[0m" y repetimos el comando de la creacion grub.cfg
#echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg \e[0m"
#echo
#echo -e "\e[36m===================================================\e[0m"
#bash
#clear

# Establecer contraseña del Administrador (root)
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema: Establecer contraseña del Administrador 'root'
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt passwd \e[0m"        '-> Introducimos la contraseña:'
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Crear usuario
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema: Creamos el usuario, añadimos estos grupos:
echo
#cremos la variable $usuario
echo "Pon el nombre de tu usuario:"
read usuario
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt useradd -m -g users -G audio,lp,optical,storage,video,wheel,games,power,scanner -s /bin/bash "$usuario" \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Establecer contraseña del usuario
echo -e "\e[36m===================================================\e[0m"
echo
echo    Configurando el sistema: Establecer contraseña del usuario:
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt passwd  $usuario \e[0m"'-> Introducimos la contraseña:'
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# Copiar el script de instalacion
#echo -e "\e[36m===================================================\e[0m"
#echo   Copiamos el script de instalacion
#echo
#echo -e   Escrive:$  "\e[1;33m cd .. \e[0m"
#echo -e   Escrive:$  "\e[1;33m cp -r install_Arch_script /mnt/root \e[0m"
#echo
#echo -e "\e[36m===================================================\e[0m"
#bash
#clear
# Dosmontar particiones y reinicio de sistema
echo -e "\e[36m===================================================\e[0m"
echo
echo   Dosmontar particiones y reinicio de sistema
echo
echo -e   Escrive:$  "\e[1;33m umount -R /mnt \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
read -p "Press enter para reiniciar el sistema" 
reboot