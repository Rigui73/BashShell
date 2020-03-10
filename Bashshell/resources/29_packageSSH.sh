#!/bin/bash
# Function: Programa para ejemplificar la forma de transferir por la red utilizando el comando rsync. utilizando los comandos de empaquetamiento para optimizar el envio.
# Author: Adria Rigall - @rigui73

echo "Empaquetar todas ls scripts de la carpeta Resources y transferir por la red a otro equipo utilizando el comando rsync"

host=""
usuario=""

read -p "ingresar el host:" host
read -p "ingresar el usuario:" usuario

echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferencia segun los datos ingresados"

rsync -avz $(pwd) $usuario@$host:/f/PRACTICAS/BashShell/resources
