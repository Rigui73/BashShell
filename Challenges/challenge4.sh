#!/bin/bash
# Function: Lanzar un menú de opciones e imprimir la opción escogida por un usuario
# Author: Adria Rigall - @rigui73

opcion = 0

while :
do
  clear
  echo "------------------------------------"
  echo "       RETO 4 - MENU PRINCIPAL      "
  echo "------------------------------------"
  echo "1. Procesos Actuales"
  echo "2. Memoria Disponible"
  echo "3. Espacio en Disco"
  echo "4. Información de Red"
  echo "5. Variables de Entorno Configuradas"
  echo "6. Información Programa"
  echo "7. Backup información"
  echo "0. Salir del Programa"
  echo "------------------------------------"
  read -n1 -p "Ingrese una opción: " opcion

  case $opcion in
    1)
      clear
      echo "------------------------------------"
      echo "       MP - PROCESOS ACTUALES       "
      echo "------------------------------------"
      sleep 3
      ;;
    2)
      clear
      echo "------------------------------------"
      echo "       MP - MEMORIA DISPONIBLE      "
      echo "------------------------------------"
      sleep 3
      ;;
    3)
      clear
      echo "------------------------------------"
      echo "       MP - ESPACIO DE DISCO        "
      echo "------------------------------------"
      sleep 3
      ;;
    4)
      clear
      echo "------------------------------------"
      echo "       MP - INFORMACIÓN DE RED      "
      echo "------------------------------------"
      sleep 3
      ;;
    5)
      clear
      echo "------------------------------------"
      echo "     MP - VARIABLES CONFIGURADAS    "
      echo "------------------------------------"
      sleep 3
      ;;
    6)
      clear
      echo "------------------------------------"
      echo "       MP - INFORMACIÓN PROGRAMA    "
      echo "------------------------------------"
      sleep 3
      ;;
    7)
      clear
      echo "------------------------------------"
      echo "        MP - BACKUP PROGRAMA        "
      echo "------------------------------------"
      sleep 3
      ;;
    0)
      clear
      echo "Salir del Programa"
      exit 0
      ;;
    *)
      clear
      echo "EL VALOR INGRESADO NO ES CORRECTO."
      echo "PRUEBE UN VALOR ENTRE [1-7]"
      sleep 3
      ;;
  esac
done
