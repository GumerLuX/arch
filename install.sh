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

# 1 INTRO
clear
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "Bienvenido al instalador de ${turquoiseColour}ARCHLINUX${fincolor}"
echo -e "Creado por ${greenColour}SinLuX90${fincolor}"  
echo        Este escript funciona de esta manera:
echo
echo -e   1- Te muestra por pantalla el "${yellowColour} comando de este color ${fincolor}"  que tienes que escribir
echo      2- Te abre el terminal
echo      3- Introduces el comando + enter
echo -e   4- Introduce "${yellowColour} exit ${fincolor}" y el script continuara.
echo -e   Recuerda escribe "${yellowColour} exit ${fincolor}" para continuar el script
echo
echo -e "${blueColour}===================================================${fincolor}"
echo
bash
clear
# TECLADO ESPAÑOL
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} TECLADO ESPAÑOL Y AÑADIMOS MEMORIA ${fincolor}"
echo
echo    Configuramos nuestro teclado
echo
echo -e   Escrive:$  "${yellowColour} loadkeys es ${fincolor}"
echo
echo -e   Escrive:$  "${yellowColour} mount -o remount,size=2G /run/archiso/cowspace ${fincolor}"
echo
echo -e   Recuerda escribe "${yellowColour} exit ${fincolor}" para continuar el script
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# ACTUALIZAR REPOSITORIOS E INSTALAR EL RATON DE CONSOLA
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} ACTUALIZAR REPOSITORIOS E INSTALAR EL RATON DE CONSOLA ${fincolor}"
echo
echo	Actualizamos los repositorios e instalmos el mousse para la consola  
echo    
echo -e   Escrive:$  "${yellowColour} pacman -Sy gpm ${fincolor}"     y luego exit
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} ACTIVAMOS EL MOUSSE EN LA CONSOLA${fincolor}"
echo
echo    Activamos los servicios del mousse en systemctl
echo
echo -e   Escrive:$  "${yellowColour} systemctl start gpm.service ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# EDITAR DISCO LANZAR SCRIPT
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "   ${greenColour} PARTICIONAR EL DISCO MANUALMENTE O CON SCRIPT ${fincolor}"
echo
echo    "   Aqui elegimos la forma en que queremos particionar el disco."
echo    "   Podemos particionamarlo manualmente o con la ayuda de un script:"
echo
echo -e   .     "1º  Hacer la particion manual, con el comando cfdisk"
echo -e   .     "2º  Hacer la particion guiada con el script disco.sh"
echo
echo -e  Escrive:$  "${yellowColour} cfdisk${fincolor}" Para hacelo manualmente.
echo -e  Escrive:$  "${yellowColour} sh disco.sh o ./disco.sh${fincolor}" Para tener ayuda.	
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear

echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "   ${greenColour} COMPROBANDO EL DISCO FORMATEADO ${fincolor}"
echo
echo    "   Verificamos la configuracion del disco formateado."
sleep 1s
echo "Cual es el disco que se a formateado: (ej: sda)"
# cremos la variable $disco
read disco
echo -e "p" | fdisk /dev/$disco
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# FORMATEAR PARTICION BOOT
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "   ${greenColour} FORMATEAR PARTICION BOOT ${fincolor}"
echo
echo    Formateamos la particion boot
echo
echo "Cual es el disco a formatear (ej: sda1)"
echo
#cremos la variable $disco1
read disco1
echo
echo -e   Escrive:$  "${yellowColour} mkfs.ext2 /dev/$disco1 ${fincolor}"
echo
echo -e   Si qieren poner el LABEL al disco:$"${yellowColour} mkfs.ext2 -L boot /dev/$disco1 ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# FORMATEAR PARTICION SISTEMA /
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} FORMATEAR PARTICION SISTEMA / ${fincolor}"
echo
echo    Formateamos la particion sistema /
echo
echo "Cual es el disco a formatear (ej: sda2)"
echo
#cremos la variable $disco2
read disco2
echo
echo -e   Escrive:$  "${yellowColour} mkfs.ext4 /dev/$disco2 ${fincolor}"
echo
echo -e   Si qieren poner el LABEL al disco:$"${yellowColour} mkfs.ext4 -L KDE /dev/$disco2 ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# FORMATEAR PARTICION SWAP Y MONTAMOS
echo -e "${blueColour}===================================================${fincolor}"
echo
echo    Formateamos la particion swap y montamos
echo
echo "Cual es el disco a formatear (ej: sda3)"
#cremos la variable $disco3
read disco3
echo
echo -e   Escrive:$  "${yellowColour} mkswap /dev/$disco3 ${fincolor}"
echo
echo -e   Si qieren poner el LABEL al disco:$  "${yellowColour} mkswap -L swap /dev/$disco3 ${fincolor}"
echo
echo -e   Escrive:$  "${yellowColour} swapon /dev/$disco3 ${fincolor}"

echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# MONTAMOS LA PARTICION DEL SISTEMA
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} MONTAMOS LA PARTICION DEL SISTEMA / ${fincolor}"
echo
echo    Montamos las particion del sistema en: /mnt
echo
echo -e   Escrive:$  "${yellowColour} mount /dev/$disco2 /mnt ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# CREAR DIRECTORIOS {BOOT HOME} MONTAMOS
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} CREAR DIRECTORIO {BOOT} Y MONTAMOS ${fincolor}"
echo
echo    Creamos el directorio boot y montamos en /mnt
echo
echo -e   Escrive:$  "${yellowColour} mkdir /mnt/boot /mnt ${fincolor}"
echo -e   Escrive:$  "${yellowColour} mount /dev/$disco1 /mnt/boot ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# INSTALAMDO ES SISTEMA BASE
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} INSTALAMDO ES SISTEMA BASE ${fincolor}"
echo
echo    Instalando el Kernel Linux y Sistema Base
echo
echo    Llamamos al script de instalacion del Kernel:
echo
echo -e   Escrive:$  "${yellowColour} ./kernel.sh ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# GENERAR EL FSTAB
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} GENERAR EL FSTAB ${fincolor}"
echo
echo    Instalando el Sistema Base: 'Generar fstab'
echo
echo -e   Escrive:$  "${yellowColour} genfstab -pU /mnt >> /mnt/etc/fstab ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
## Entrar en el sistema base #########################
# CREANDO EL HOSTNAME
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} CREANDO EL HOSTNAME ${fincolor}"
echo
echo    Configurando el sistema con arch-chroot:
echo
echo    Creando nombre del sistema 'hostname'
echo
echo -e "${blueColour}===================================================${fincolor}"
echo "  Cual es el nombre de tu PC (ej: SinLuX)"
#cremos la variable $PC
read PC
echo
echo -e   Escrive:$  "${yellowColour} echo $PC > /mnt/etc/hostname ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# ESTABLECER LA ZONA HORARIA
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} ESTABLECER LA ZONA HORARIA ${fincolor}"
echo
echo    Configurando el sistema con arch-chroot:
echo
echo    Establecer la zona horaria 'Creamos un link de nuestra zona horaria'
echo
echo -e   Escrive:$  "${yellowColour} arch-chroot /mnt ln -s /usr/share/zoneinfo/Europe/Madrid /etc/localtime ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# borrar el # en el siguiente enunciado es_ES.UTF-8 UTF-8
# EDITANDO LOCALES
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} EDITANDO LOCALES ${fincolor}"
echo
echo    Configurando el sistema Locales
echo
echo -e   ' Borrar el hashtag "#" en el siguiente enunciado es_ES.UTF-8 UTF-8' 
echo
echo -e   Escrive:$  "${yellowColour}  nano /mnt/etc/locale.gen ${fincolor}"
echo
echo  -e  " Guardar el archivo (Ctrl+o), Para salir (Ctrl+x)"
echo
echo -e   ' Podemos hacerlo directamente con el comando:'
echo
echo -e   Escrive:$ "${yellowColour} sed -i '/es_ES.UTF/s/^#//g' /mnt/etc/locale.gen${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# DIFINIENDO EL IDIOMA
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} DIFINIENDO EL IDIOMA ${fincolor}"
echo
echo    Configurando el sistema: Difiniendo el lenguaje = idioma PC
echo
echo -e   Escrive:$  "${yellowColour} echo LANG=es_ES.UTF-8 > /mnt/etc/locale.conf ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# GENERANDO LOCALES
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} GENERANDO LOCALES ${fincolor}"
echo
echo    Configurando el sistema: Generando locales
echo
echo -e   Escrive:$  "${yellowColour} arch-chroot /mnt locale-gen ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# CONFIGURAR EL RELOJ DE HARDWARE
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} CONFIGURAR EL RELOJ DE HARDWARE ${fincolor}"
echo
echo    Configurando el sistema: Configurar el reloj de hardware
echo
echo -e   Escrive:$  "${yellowColour} arch-chroot /mnt hwclock -w ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# CONFIGURAR EL TECLADO
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} CONFIGURAR EL TECLADO ${fincolor}"
echo
echo    Configurando el sistema: Configurar el teclado 'keyboard'
echo
echo -e   Escrive:$  "${yellowColour} echo KEYMAP=es > /mnt/etc/vconsole.conf ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# INSTALAR EL GRUB
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} INSTALAR EL GRUB ${fincolor}"
echo
echo    Configurando el sistema: Instalar el arranque grub
sleep 2s
echo
echo    'En que disco vas a instalar el cargador de arranque (ej: sda)'
#cremos la variable $disco4
read disco4
echo
echo -e   Escrive:$  "${yellowColour} arch-chroot /mnt grub-install /dev/$disco4 ${fincolor}"
echo -e   Escrive:$  "${yellowColour} arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# STABLECER CONTRASEÑA DE ADMINISTRADOR (root)
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} ESTABLECER CONTRASEÑA DE ADMINISTRADOR (root) ${fincolor}"
echo
echo    Configurando el sistema: Establecer contraseña del Administrador 'root'
echo
echo -e   Escrive:$  "${yellowColour} arch-chroot /mnt passwd ${fincolor}"
echo    '     -> Introducimos la contraseña:'
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# CREAMOS LA CUENTA DE USUARIO
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} CREAMOS LA CUENTA DE USUARIO ${fincolor}"
echo
echo    Configurando el sistema: Creamos el usuario, añadimos estos grupos:
echo
#cremos la variable $usuario
echo "Pon el nombre de tu usuario:"
read usuario
echo -e   Escrive:$  "${yellowColour} arch-chroot /mnt useradd -m -g users -G audio,lp,optical,storage,video,wheel,games,power,scanner -s /bin/bash "$usuario" ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# ESTABLECER CONTRASEÑA DE USUARIO
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} ESTABLECER CONTRASEÑA DE USUARIO ${fincolor}"
echo
echo    Configurando el sistema: Establecer contraseña del usuario:
echo
echo -e   Escrive:$  "${yellowColour} arch-chroot /mnt passwd  $usuario ${fincolor}"
echo    '     -> Introducimos la contraseña:'
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# COPIAMOS EL ESCRIPT DE INSTALACION
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} COPIAMOS EL ESCRIPT DE INSTALACION ${fincolor}"
echo
echo   Copiamos el script de instalacion, vamos un directorio atras.
echo
echo -e   Escrive:$  "${yellowColour} cd .. ${fincolor}"
echo -e   Escrive:$  "${yellowColour} cp -rp arch /mnt/root / ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
# DESMONTAMOS PARTICIONES Y REINICIAMOS EL SISTEMA
echo -e "${blueColour}===================================================${fincolor}"
echo
echo -e "${greenColour} DESMONTAMOS PARTICIONES Y REINICIAMOS EL SISTEMA ${fincolor}"
echo
echo   Dosmontar particiones y reinicio de sistema
echo
echo -e   Escrive:$  "${yellowColour} umount -R /mnt ${fincolor}"
echo
echo -e "${blueColour}===================================================${fincolor}"
bash
clear
read -p "Press enter para reiniciar el sistema" 
reboot
