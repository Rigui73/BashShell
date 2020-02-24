#!/bin/bash
# Function: Programa para ejemplificar el empaquetamiento con el comando tar y gzip.
# Author: Adria Rigall - @rigui73

echo "Empaquetar todas ls scripts de la carpeta Resources"
tar -cvf shellCourse.tar *.sh

# Cuando se empaqueta con gzip el anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo. con un ratio 9"
gzip -9 9_options.sh
