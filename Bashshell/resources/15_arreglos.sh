#!/bin/bash
# Function: Programa para ejemplificar el uso de arreglos
# Author: Adria Rigall - @rigui73

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rango: ${arregloRangos[*]}"

# imprime los tamaños de los arreglos
echo "Tamaño arreglo de Números: ${#arregloNumeros[*]}"
echo "Tamaño arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño arreglo de Rango: ${#arregloRangos[*]}"

# Imprimir la posición 3 del arreglo de número, cadena y rango
echo "Posición 3 del arreglo de Números: ${arregloNumeros[3]}"
echo "Posición 3 del arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Posición 3 del arreglo de Rango: ${arregloRangos[3]}"

#Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Tamaño areglo de Números: ${#arregloNumeros[*]}"
