#!/bin/bash
# Function: Programa para ejemplificar el empaquetamiento con el comando pbzip2.
# Author: Adria Rigall - @rigui73

echo "Empaquetar todas ls scripts de la carpeta Resources"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -e > shellCourseDos.tar.bz2
