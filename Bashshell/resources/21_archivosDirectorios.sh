#!/bin/bash
# Function: Programa para ejemplificar la creación de archivos y directorios
# Author: Adria Rigall - @rigui73

echo "Archivos Directorios"

if [ $1 = "d" ]; then
  mkdir -m 755 $2
  echo "Directorio Creado Correctamente."
  ls -la $2
elif [ $1 = "f" ]; then
  touch $2
  echo "Archivo Creado Correctamente."
  ls -la $2
else
  echo "No existe esa opción: $1"
fi
