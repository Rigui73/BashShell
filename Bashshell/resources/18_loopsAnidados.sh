#!/bin/bash
# Function: Programa para ejemplificar el uso de los anidados
# Author: Adria Rigall - @rigui73

echo "Loops Anidados"

for fil in $(ls)
do
  for nombre in {1..4}
  do
    echo "Nombre archivo: $fil _ $nombre"
  done
done
