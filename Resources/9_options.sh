#!/bin/bash
# Description: Programa para ejemplificar como se realiza el paso de opcioiones con/sin parametros
# Author: Adria Rigall - @rigui73

echo "Programa opciones"
echo "Opcion 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opciones enviadas: $*"
echo -e "\n"

# si una de la opciones concuerda con lo que esta dentro el parentesis se ejecuta el comando echo asignado.
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option utilizada";;
-b) echo "-b option utilizada";;
-c) echo "-c option utilizada";;
*) echo "$! no es una opción";;
esac
shift
done

