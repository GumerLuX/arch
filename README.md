# Manual para instalar Arch Linux

Este script ara más fácil la instalación de Arch Linux
Con él se pueden ver los comandos que necesitas para la instalación y vosotros mismos los iréis poniendo.
De esta manera iréis aprendiendo más fácil.
Podéis cambiar los comandos, por otros que vosotros utilicéis.

## Guía de utilización

Nos descargamos la ISO desde la página oficial https://www.archlinux.org/download/

O directamente desde aquí http://ftp.rediris.es/mirror/archlinux/iso/2020.08.01/archlinux-2020.08.01-x86_64.iso

Cargamos la iso en nuestro PC o M. Virtual, una vez iniciado el sistema nos descargamos el git

---

\$ pacman -Sy git

\$ git clone https://github.com/SinLuX90/arch.git

Nos encontramos con cuatro scripts a utilizar en este orden

1º install.sh -> Es un script de instalación Arch Linux SO

2º disco.sh -> Configuración del disco y particiones

3º kernel.sh -> Instalación del Kernel Linux y Sistema Base

4º usuario.sh -> Configuración de Grafica y programas

\$ cd install_arch_script

### Lanzamos el script

\$ ./install.sh

---

El script se utiliza muy fácil;

El color amarillo que veis indica el comando a introducir en el bash:

Una vez introducido + Enter para ejecutar -> Se realiza el comando

En la próxima línea del bash tenéis que poner exit

bash~\$ exit -> para continuar con el script

Cuando configuremos el disco e instalemos el kernel de linux, lanzaremos el orto script dentro del primero.

Para salir de estos script hay que poner dos veces exit.

Así hasta el final, ya veréis que en poco tiempo tenis Arch Linux instalado.

No os dará tiempo para tomar :coffee:

Próximamente añadiré un video de la instalación.
