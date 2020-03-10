#!/bin/bash
# Function: Programa que permite manejar las utiliddades de Postgres
# Author: Adria Rigall - @rigui73

opcion=0

# Función para insalar postgres
instalar_postgres () {
  echo -e "\nVerificar instalación postgres..."
  verifyInstall=$(which psql)
  if [ $? -eq 0 ]; then
    echo -e "\n Postgres ya e encuentra instalado en el equipo"
  else
    read -s -p "Ingresar contraseña de sudo:" password
    read -s -p "Ingresar contraseña a utilizar en postgres:" passwordPostgres
    echo "$password" | sudo -S apt update
    echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passwordPostgres}';"
    echo "$password" | sudo -S systemctl enable postgresql.service
    echo "$password" | sudo -S systemctl start postgresql.service
  fi
  read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}


# Función para desintalar postgres
desinstalar_postgres () {
  read -s -p "Ingresar contraseña de sudo:" password
  echo -e "\n"
  echo "$password" | sudo -S systemctl stop postgresql.service
  echo "$password" | sudo -S apt-get -y --purge revome postgresql\*
  echo "$password" | sudo -S rm -r /etc/postgresql
  echo "$password" | sudo -S rm -r /etc/postgresql-common
  echo "$password" | sudo -S rm -r /var/lib/postgresql
  echo "$password" | sudo -S userdel -r postgres
  echo "$password" | sudo -S groupdel postgresql
  read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

# Función para sacar un respaldo
sacar_respaldo () {
  echo "sacar respaldo..."
  echo "Directorio Backup: $1"
}

# Función para restaurar un respaldo
restaurar_respaldo () {
  echo "restaurar respaldo..."
  echo "Directorio Respaldo: $1"
}

while :
do
  # Limpiar la pantalla
  clear
  # desplegar el menu de opciones
  echo "-----------------------------------------"
  echo "PGUTIL - Programa de Utilidad de Postgres"
  echo "-----------------------------------------"
  echo "              MENU PRINCIPAL             "
  echo "-----------------------------------------"
  echo "1. Instalar Postgres"
  echo "2. Desinstalar Postgres"
  echo "3. Sacar un respaldo"
  echo "4. Restar respaldo"
  echo "5. Salir"

  # leer los datos del usuario - Capturar información
  read -n1 -p "Ingrese una opción [1-5]:" opcion

  #validar la opción ingresada
  case $opcion in
  1)
    instalar_postgres
    sleep 3
    ;;
  2)
    desinstalar_postgres
    sleep 3
    ;;
  3)
    read -p "Directorio Backup:" directorioBackup
    sacar_respaldo $directorioBackup
    sleep 3
    ;;
  4)
    read -p "Directorio de Respaldos:" directorioRespaldos
    restaurar_respaldo $directorioRespaldos
    sleep 3
    ;;
  5)
    echo -e "\nSalir del Programa"
    exit 0
    ;;
  esac
done
