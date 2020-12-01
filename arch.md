# Manual para instalar Arch Linux

Este script ara más fácil la instalación de **Arch Linux**

Con él se pueden ver los `comandos` que necesitas para la instalación y vosotros mismos los iréis poniendo.

De esta manera iréis aprendiendo más fácil.

Podéis cambiar los comandos, por otros que vosotros utilicéis.

Al finalizar un `comando` ay que poner **exit** para continuar.

## Guía de utilización
 
Nos descargamos la ISO desde la página oficial https://www.archlinux.org/download/

O directamente desde aquí: http://ftp.rediris.es/mirror/archlinux/iso/2020.11.01/archlinux-2020.11.01-x86_64.iso 

Cargamos la iso en nuestro PC o M. Virtual, una vez iniciado el sistema nos descargamos el git del repositorio:

**empecemos!** 

### Preparar el sistema para lanzar el script

Para empezar ponemos el teclado en español:
```sh
$ loadkeys es
```
Actualizamos y descargamos git:
```sh
$ pacman -Sy git
```
Terminado nos bajamos el repositorio de este enlace: 
```sh
$ git clone https://github.com/GumerLuX/arch.git
```
### Lanzamos el script

Terminada la descarga entramos en el directorio y ejecutamos el script. 
```sh
$ cd arch
$ ls			-> nos muestra los archivos
install.sh disco.sh kernel.sh root.sh usuario.sh README.md ......
```  
Nos encontramos con cinco scripts a utilizar en este orden  
> 1º install.sh -> Es un script de instalación **Arch Linux**. Dentro se utilizan el script de configuración del disco e instal·lació del sistema base y **kernel linux**
>
> - Aº disco.sh -> Configuración del disco y particiones
> - Bº kernel.sh -> Instalación del Sistema Base y Kernel Linux
>
> 2º root.sh -> Configuración de Red y controladores gráficos.
> 3º usuario.sh -> Configuración de usuario y Escritorio gráfico.

### Nota 

Dentro de la instalación, al poner el segundo script el de disco.sh hay que poner dos veces **exit** para volver al script principal.

> El primer **exit** sale del script disco.sh

> El segundo **exit** continua el primer script

> Paso lo mismo al lanzar el script de kernel.sh
  
Lanzamos el el script
```sh
$ ./install.sh
```

Terminado el primer script, reiniciamos el sistema y entramos como root.
`$ root -> introducimos la contraseña de root`

Y lanzamos el segundo script
```sh
$ ls			-> Comprobamos el directorio
$ cd arch 		-> Entramos en el, y lanzamos el script
$ ./root.sh
```

Al finalizar entramos como usuario y lanzamos el tercer script
```sh
$ exit			-> para salir de root.
$ usuario		-> introducimos la contraseña de usuario
```
```sh
$ ls			-> Comprobamos el directorio
$ cd arch		-> Entramos en el, y lanzamos el script
$ ./usuario.sh
``` 
--- 
El script se utiliza muy fácil:  

El color amarillo que veis indica el comando a introducir en el bash:

Una vez introducido + Enter para ejecutar 
```sh
$ Se realiza el comando
``` 
En la próxima línea del `bash$` tenéis que poner **exit**
```sh
$ exit			-> para continuar con el script
```  
Recordar, cuando configuremos el disco e instalemos el kernel de linux, lanzaremos el orto script dentro del primero.

Para salir de estos script hay que poner dos veces **exit**.
Así hasta el final, ya veréis que en poco tiempo tenis **Arch Linux** instalado.
No os dará tiempo para tomar :coffee: 

Cualquier duda podéis mandar un correo: GumerLuX@gmail.com