#!/bin/bash
# Function: Programa para ejemplificar la escritura dentro de archivos
# Author: Adria Rigall - @rigui73

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

#Addición multilinea
cat <<EOM >> $1
$2
EOM
