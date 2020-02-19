#!/bin/bash
# Function: Programa para ejemplificar la lectura dentro de archivos
# Author: Adria Rigall - @rigui73

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat= cat $1
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco al inicio al final se recortan
echo "Leer archivos linea por linea utilizando while"
while IFS= read linea
do
  echo "$linea"
done < $1
