# !/bin/bash
# Description: Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información.
# Author: Adria Rigall - @rigui73

nombre=""
apellido=""
edad=""
direccion=""
telefono=""

read -p "Inserte su nombre: " nombre
read -p "Inserte su apellido: " apellido
read -p "Inserte su edad: " edad
read -p "Inserte su dirección: " direccion
read -p "Inserte su teléfono: " telefono

echo "Gracias por registrarte $nombre $apellido."
echo "Compruebe sus datos:"
echo "Direccion: $direccion"
echo "telefono: $telefono"
echo "Edad: $edad"
