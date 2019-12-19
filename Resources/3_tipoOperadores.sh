#!/bin/bash
# Function: Programa para revisar los tipos de operadores
# Author: Adria Rigall - @rigui73

numA=10
numB=4

echo "Números: A= $numA y B= $numB"

echo "Operadores Aritméticos"
echo "A + B =" $((numA + numB))
echo "A - B =" $((numA - numB))
echo "A * B =" $((numA * numB))
echo "A / B =" $((numA / numB))

echo "Operadores Relacionales"
echo "A < B =" $((numA < numB))
echo "A > B =" $((numA > numB))
echo "A <= B =" $((numA <= numB))
echo "A >= B =" $((numA >= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))

echo "Operadores de Asignación"
echo "A += B =" $((numA += numB))
echo "A -= B =" $((numA -= numB))
echo "A *= B =" $((numA *= numB))
echo "A /= B =" $((numA /= numB))
echo "A %= B =" $((numA %= numB))
