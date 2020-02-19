#!/bin/bash
# Function: Programa para ejemplificar el uso de la sentencia de iteración while loop
# Author: Adria Rigall - @rigui73

numero=1

while [ $numero -ne 10 ]
do
  echo "Imprimiendo $numero veces"
  numero=$((numero + 1))
done
