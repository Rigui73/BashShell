#!/bin/bash
# Function: Programa para ejemplificar las operaciones de un archivo
# Author: Adria Rigall - @rigui73

echo "Operaciones de un archivo"
mkdir -m 755 backupsScripts/

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio"
cp *.* backupsScripts/
ls -la backupsScripts/

echo -e "\nMover el directorio backupScripts a otra ubicación: $HOME"
mv backupsScripts/ $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt