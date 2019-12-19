#!/bin/bash
# Function: Programa para simplificar el paso de argumentos
# Author: Adria Rigall - @rigui73

option=0
backupName = ""

echo "programa Utilidades Postgres"
read -p "ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opción:$option , backupName:$backupName"
