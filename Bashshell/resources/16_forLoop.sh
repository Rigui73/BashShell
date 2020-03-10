#!/bin/bash
# Function: Programa para ejemplificar el uso de la sentencia de iteración for loop
# Author: Adria Rigall - @rigui73

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de Números"
for num in ${arregloNumeros[*]}
do
  echo "Número: $num"
done

echo "Iterar en la lista de Cadenas"
for nom in "marco" "Pedro" "Luis" "Daniela"
do
  echo "Número: $nom"
done

echo "Iterar en Archivos"
for fil in *
do
  echo "Nombre archivo: $fil"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
  echo "Nombre archivo: $fil"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
  echo "Número: $i"
done
