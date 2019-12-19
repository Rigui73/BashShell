#!/bin/bash
# Function: Revisar la declaración de variables
# Author: Adria Rigall - @rigui73

opcion=0
nombre=Adria

echo "Opción: $opcion Nombre: $nombre"

# Exportar la variable $nombre para que este disponible a los demas procesos

export nombre

# llamar al segundo script

./2_variables_2.sh
