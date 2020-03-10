#!/bin/bash
# Description: Programa para validar datos
# Author: Adria Rigall - @rigui73

option=0
backupName=""
clave=""

echo "programa utilidades postgres"
#acepta el ingreso de un solo caracter
read -n1 -p "ingresar una opcion:" option
echo -e "\n"
read -n10 -p "ingresar el nombre del archivo backup:" backupName
echo -e "\n"
read -s -p "Clave:" clave
echo "Opción: $option , backupname: $backupName , Clave: $clave"
