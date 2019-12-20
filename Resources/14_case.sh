#!/bin/bash
# Function: Programa para ejemplificar el uso de la sentencia Case
# Author: Adria Rigall - @rigui73

opcion=""


echo "Ejemplo Sentencia Case"
read -p "ingrese una opción de la A - Z: " opcion
echo -e "\n"

case $opcion in
  "A") echo -e "\nOperación Guardar Archivo";;
  "B") echo "Operación Eliminar Archivo";;
  [C-E]) echo "No esta implementada la operación";;
  "*") "Opción Incorrecta"
esac
