#!/bin/bash
# Description: Programa que valida la información recibida por el usuario.
# Author: Adria Rigall - @rigui73

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US$'
fechaNacimientoRegex='^19|20[0-0]{2}[1-12][1-31]$'

read -p "ingresa identificacion:" identificacion
read -p "ingresa las iniciales del pais:" pais
read -p "ingresa la fecha de nacimiento:" fechaNacimiento

# validación de la variable $identificacion
if [[ $identificacion =~ $identificacionRegex ]]; then
  echo "Identificación $identificacion válida"
else
  echo "Identificación $identificacion inválida"
fi

# validación de la variable $país
if [[ $pais =~ $paisRegex ]]; then
  echo "Pais $pais válido"
else
  echo "Pais $pais inválido"
fi

# validación de la variable $fechaNacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
  echo "Fecha de nacimiento $fechaNacimiento valida"
else
  echo "Fecha de nacimiento $fechaNacimiento inválida"
fi
