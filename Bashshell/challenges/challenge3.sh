# !/bin/bash
# Description: Solicita un rango de valor e imprime una pregunta segun ese valor.
# Author: Adria Rigall - @rigui73

valor=""
edad=""
pais=""
directorio=""

read -p "Ingrese un valor del 1 al 5 para recibir una pregunta: " valor

case $valor in
  "1") read -p "¿Cuál es tu edad? " edad
        if [ $edad -lt 18 ]; then
          echo "Eres un niño o niña."
        elif [ $edad -ge 14 ] && [ $edad -le 17 ]; then
          echo "Eres un o una adolescente."
        else
          echo "Eres mayor de edad."
        fi;;
  "2") read -p "¿Cuál es tu país? " pais
        if [ $pais = "España" ]; then
          echo "La persona es Español o Española"
        elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
          echo "La persona es del Sur de America"
        else
          echo "Se desconoce la nacionalidad"
        fi;;
  "3") read -p "¿Cuál es tu directorio? " directorio
        if [ -d $directorio ]; then
          echo "El directorio $directorio existe"
        else
          echo "El directorio $directorio no existe"
        fi;;
  [4-5]) echo "No hay preguntas para ti"
esac
