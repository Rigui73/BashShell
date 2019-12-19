#!/bin/bash
# Function: Programa para simplificar el paso de argumentos
# Author: Adria Rigall - @rigui73

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción:$option , backupName:$backupName"
