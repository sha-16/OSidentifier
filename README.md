# OSidentifier
Este es un script en Bash que te permite reconocer sistemas operativos mediante
trazas ICMP a través de la utilidad PING. 

## Motivos de la creación 
1. Practicar Bash Scripting.
2. Crear una versión en Bash del script ```whichsystem.py``` escrito en Python por el señor s4vitar.
3. Aportar variabilidad a la ciberseguridad.

## Instalación y uso
```bash 
$ git clone https://github.com/sha-16/OSidentifier.git
$ cd OSidentifier/ 
$ chmod +x OSidentifier
$ ./OSidentifier
```

**Nota:** si deseas ejecutar el script sin indicar su ruta absoluta, deberás añadirlo a 
cualquiera de las rutas del path en tu sistema. Estas las puedes ver ejecutando la 
siguiente sentencia, para ver la variable de entorno ```$PATH```: ```$ echo $PATH```.
