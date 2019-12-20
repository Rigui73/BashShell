#!/bin/bash
# Function: Programa para ejemplificar el uso de la sentencia If/Else
# Author: Adria Rigall - @rigui73

edad=0

echo "Ejemplo Sentencia If -else"

read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
  echo "La persona no puede sufragar"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
  echo "La persona es adulta"
else
  echo "La persona es adulto mayor"
fi