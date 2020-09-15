#!/bin/bash

#version: 0.1
# https://github.com/SinLuX90/arch.git
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
bash
clear
# TECLADO ESPAÑOL
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m TECLADO ESPAÑOL \e[0m"
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
echo -e "\e[32m ACTUALIZAR REPOSITORIOS E INSTALAR EL RATON DE CONSOLA \e[0m"
echo
echo	Actualizamos los repositorios e instalmos el mousse para la consola  
echo    
echo -e   Escrive:$  "\e[1;33m pacman -Syu gpm \e[0m"     y luego exit
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m Actualizamos los servicios de mousse \e[0m"
echo
echo    Activamos los servicios del mousse en systemctl
echo
echo -e   Escrive:$  "\e[1;33m systemctl start gpm.service \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# EDITAR DISCO LANZAR SCRIPT
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "   \e[1;34m EDITAR DISCO LANZAR SCRIPT \e[0m"
echo
echo    "   Tenemos un disco de 30G en nuestra MV."
echo    "   Y vamos ha particionamarlo asi:"
echo
echo -e   .     "1º  particion     boot    500M        -Particion de arranque"
echo -e   .     "2º  particion     /       27.5G       -Particion del sistema"
echo -e   .     "3º  particion     swap    2G          -Particion de memoria intercambio"
echo
echo -e  Escrive:$  "\e[1;33m sh disco.sh o ./disco.sh\e[0m" 	
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# FORMATEAR PARTICION BOOT
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "   \e[1;34m FORMATEAR PARTICION BOOT \e[0m"
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
echo -e   Si qieren poner el LABEL al disco:$"\e[1;33m mkfs.ext2 -L boot /dev/$disco1 \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# FORMATEAR PARTICION SISTEMA /
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m FORMATEAR PARTICION SISTEMA / \e[0m"
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
echo -e   Si qieren poner el LABEL al disco:$"\e[1;33m mkfs.ext4 -L KDE /dev/$disco2 \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
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
echo
echo -e   Si qieren poner el LABEL al disco:$  "\e[1;33m mkswap -L swap /dev/$disco3 \e[0m"
echo
echo -e   Escrive:$  "\e[1;33m swapon /dev/$disco3 \e[0m"

echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# MONTAMOS LA PARTICION DEL SISTEMA
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m MONTAMOS LA PARTICION DEL SISTEMA / \e[0m"
echo
echo    Montamos las particion del sistema en: /mnt
echo
echo -e   Escrive:$  "\e[1;33m mount /dev/$disco2 /mnt \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# CREAR DIRECTORIOS {BOOT HOME} MONTAMOS
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m CREAR DIRECTORIOS {BOOT HOME} MONTAMOS \e[0m"
echo
echo    Creamos el directorio boot y montamos en /mnt
echo
echo -e   Escrive:$  "\e[1;33m mkdir /mnt/boot /mnt \e[0m"
echo -e   Escrive:$  "\e[1;33m mount /dev/$disco1 /mnt/boot \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# INSTALAMDO ES SISTEMA BASE
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m INSTALAMDO ES SISTEMA BASE \e[0m"
echo
echo    Instalando el Kernel Linux y Sistema Base
echo
echo    Llamamos al script de instalacion del Kernel:
echo
echo -e   Escrive:$  "\e[1;33m ./kernel.sh \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# GENERAR EL FSTAB
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m GENERAR EL FSTAB \e[0m"
echo
echo    Instalando el Sistema Base: 'Generar fstab'
echo
echo -e   Escrive:$  "\e[1;33m genfstab -pU /mnt >> /mnt/etc/fstab \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
## Entrar en el sistema base #########################
# CREANDO EL HOSTNAME
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m CREANDO EL HOSTNAME \e[0m"
echo
echo    Configurando el sistema con arch-chroot:
echo
echo    Creando nombre del sistema 'hostname'
echo
echo -e "\e[36m===================================================\e[0m"
echo "  Cual es el nombre de tu PC (ej: SinLuX)"
#cremos la variable $PC
read PC
echo
echo -e   Escrive:$  "\e[1;33m echo $PC > /mnt/etc/hostname \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# ESTABLECER LA ZONA HORARIA
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m ESTABLECER LA ZONA HORARIA \e[0m"
echo
echo    Configurando el sistema con arch-chroot:
echo
echo    Establecer la zona horaria 'Creamos un link de nuestra zona horaria'
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt ln -s /usr/share/zoneinfo/Europe/Madrid /etc/localtime \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# borrar el # en el siguiente enunciado es_ES.UTF-8 UTF-8
# EDITANDO LOCALES
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m EDITANDO LOCALES \e[0m"
echo
echo    Configurando el sistema Locales
echo
echo -e   ' Borrar el hashtag "#" en el siguiente enunciado es_ES.UTF-8 UTF-8' 
echo
echo -e   Escrive:$  "\e[1;33m  nano /mnt/etc/locale.gen \e[0m"
echo
echo  -e  "  Guardar el archivo (Ctrl+o)"
echo  -e  "  Para salir (Ctrl+x)"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# DIFINIENDO EL IDIOMA
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m DIFINIENDO EL IDIOMA \e[0m"
echo
echo    Configurando el sistema: Difiniendo el lenguaje = idioma PC
echo
echo -e   Escrive:$  "\e[1;33m echo LANG=es_ES.UTF-8 > /mnt/etc/locale.conf \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# GENERANDO LOCALES
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m GENERANDO LOCALES \e[0m"
echo
echo    Configurando el sistema: Generando locales
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt locale-gen \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# CONFIGURAR EL RELOJ DE HARDWARE
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m CONFIGURAR EL RELOJ DE HARDWARE \e[0m"
echo
echo    Configurando el sistema: Configurar el reloj de hardware
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt hwclock -w \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# CONFIGURAR EL TECLADO
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m CONFIGURAR EL TECLADO \e[0m"
echo
echo    Configurando el sistema: Configurar el teclado 'keyboard'
echo
echo -e   Escrive:$  "\e[1;33m echo KEYMAP=es > /mnt/etc/vconsole.conf \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# INSTALAR EL GRUB
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m INSTALAR EL GRUB \e[0m"
echo
echo    Configurando el sistema: Instalar el arranque grub
sleep 2s
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
# STABLECER CONTRASEÑA DE ADMINISTRADOR (root)
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m ESTABLECER CONTRASEÑA DE ADMINISTRADOR (root) \e[0m"
echo
echo    Configurando el sistema: Establecer contraseña del Administrador 'root'
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt passwd \e[0m"
echo    '     -> Introducimos la contraseña:'
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# CREAMOS LA CUENTA DE USUARIO
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m CREAMOS LA CUENTA DE USUARIO \e[0m"
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
# ESTABLECER CONTRASEÑA DE USUARIO
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m ESTABLECER CONTRASEÑA DE USUARIO \e[0m"
echo
echo    Configurando el sistema: Establecer contraseña del usuario:
echo
echo -e   Escrive:$  "\e[1;33m arch-chroot /mnt passwd  $usuario \e[0m"'-> Introducimos la contraseña:'
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# COPIAMOS EL ESCRIPT DE INSTALACION
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m COPIAMOS EL ESCRIPT DE INSTALACION \e[0m"
echo
echo   Copiamos el script de instalacion
echo
echo -e   Escrive:$  "\e[1;33m cd .. \e[0m"
echo -e   Escrive:$  "\e[1;33m cp -rp arch /mnt/root \e[0m"
echo -e   Escrive:$  "\e[1;33m git clone https://github.com/SinLuX90/arch.git /mnt/home/$usuario \e[0m"
echo
echo -e "\e[36m===================================================\e[0m"
bash
clear
# DESMONTAMOS PARTICIONES Y REINICIAMOS EL SISTEMA
echo -e "\e[36m===================================================\e[0m"
echo
echo -e "\e[32m DESMONTAMOS PARTICIONES Y REINICIAMOS EL SISTEMA \e[0m"
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
