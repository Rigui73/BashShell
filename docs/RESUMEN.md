# RESUMEN DEL CURSO EN BASH

## Vídeo 2: Componentes Linux

### Partes principales de Linux

- Kernel: SO que gestiona el Hardware.
- Shell: Es un interprete de lenguaje para manipular y controlar aplicaciones.
- Aplicaciones: Son las aplicaciones con las que interactuamos día a día.

### Tipos de Shells

- SH
- SH
- CSH
- BASH

## Vídeo 3: Configuración VIM

Vamos al home del usuario que utilizaremos.

```bash
cd $home
```

Editamos o creamos el fichero ".vimrc" para añadir la configuración de editor.

```bash
vim .vimrc
```

Dentro del fichero de configuración añadimos las siguientes líneas:

```bash
set showmode # mostrar lo que hacemos en las operaciones.
set autoindent # soporte de autoindentación.
set tabstop = 4 # medida de los [TAB].
set expandtab # cada golpe de linea se expanda al parametro mencionado.
syntax on # colorear la syntax del editor.
```

## Vídeo 4 - 5: Crear y ejecutar el primer script

Para la creación del primer script hay que tener en cuenta el nombre del mismo.

Para comprobar que el nombre del script no es utilizado:

```bash
type -a [comando] # Comprobar si existe el nombre.
type -t # Comprobar el tipo de comando (si existe).
```

Creamos el primer script.

```bash
vim 1_utilityPostgres.sh
```

Editamos el archivo para escribir en él.

```bash
#!/bin/bash
echo "Hola Mundo"
```

Para los permisos de ejecucción en Linux:

> drwxrwxrwx archivo.sh (421 sumar estos valores segun los permisos)

```bash
chmod 777 archivo.sh
chmod +x archivo.sh
```

Maneras de ejecutar el script:

```bash
bash archivo.sh
./archivo.sh
```

## Vídeo 6: Declaración de variables

Hay 2 tipos de variables:

- VARIABLE DE ENTORNO S.O

```bash
vim /etc/profile
```

```bash
# VARIABLE DE ENTORNO S.O
COURSE_NAME=ProgramaciónBash
export COURSE_NAME
```

- VARIABLES DE USUARIO

```bash
vim 2_variables.sh
```

```bash
#!/bin/bash
opcion=0
nombre=Adria
echo "Opción: $opcion Nombre: $nombre"
# exportar la variable nombre para que este disponible a los demas procesos
export nombre
# llamar al script
./2_variables_2.sh
```

```bash
vim 2_variables_2.sh
```

```bash
#!/bin/bash
echo "El nombre asignado es: $nombre"
```

## Video 7: Tipos de operadores

```bash
vim 3_tipoOperadores.sh
```

```bash
#!/bin/bash
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
```

## Video 8: Argumentos de scripts

```bash
vim 4_argumentos.sh
```

```bash
#!/bin/bash
nombreCurso=$1
horarioCurso=$2
echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
```

Para dar los argumentos al script los mencionamos junto el nombre de archivo.

```bash
./4_argumentos.sh "argumento1" "argumento2"
```

## Video 9: Comandos en variables

```bash
vim 5_substitucionComand
```

Se puede declarar el comando de dos formas distintas:

```bash
#!/bin/bash
ubicacionActual=`pwd`
infoKernel=$(uname -a)
echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "La información del Kernel es: $infoKernel"
```

## Video 10: Debug en script

```bash
bash -v archivo.sh # ver el resulado linea por linea
```

```bash
bash -x archivo.sh # ver cuando es salida y entrada
```

## Video 11: RETO 1

> Desarrollar un programa llamado utilityHost.sh, dentro de él vamos a declarar dos variables una llamada option, otra llamada result, vamos a inicializarles e imprimir sus valores.

## Video 12: Capturar información del usuario

```bash
vim 6_readEcho.sh
```

```bash
#!/bin/bash
option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción:$option , backupName:$backupName"
```

```bash
vim 7_read.sh
```

```bash
#!/bin/bash
option=0
backupName = ""

echo "programa Utilidades Postgres"
read -p "ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opción:$option , backupName:$backupName"
```

## Video 13: Expresiones Regulares

Cuando solicitamos información al usuario es importante considerar la validación de la información, lo cual, nos permite asegurar la calidad de datos que recibimos, almacenamos y procesamos.

Expresiones regulares:

- `^` Caracter que representa el inicio de la expresión regular.
- `$` Caracter que representa el final de la expresión regular.
- `*` Caracter que representa cero o más ocurrencias de la expresión.
- `+` Caracter que representa una o más ocurrencias de la expresión.
- `{n}` Representa n veces de una expresión.
- `[a-z]` Representa un conjunto de caracteres.

Tomando en cuenta estos criterios se realizará un programa que valida la siguiente información:

```bash
vim 8_infoValidate.sh
```

```bash
#!/bin/bash
identificacionRegex='^[0-9]{10}$' # Número de Identificación de un tamaño de 10 números.
paisRegex='^EC|COL|US$' # País de Origen denotado por dos letras en un rango específico.
fechaNacimientoRegex='^19|20[0-0]{2}[1-12][1-31]$' # Fecha de Nacimiento en el formato yyyyMMDD.

read -p "ingresa identificacion:" identificacion
read -p "ingresa las iniciales del pais:" pais
read -p "ingresa la fecha de nacimiento:" fechaNacimiento
```

Luego se validará cada expresión regular comenzando con la identificación.

```bash
# validacion de la $variable
if [[ $variable =~ $variableRegex ]]; then
  echo "Variable $variable válida"
else
  echo "Variable $variable inválida"
fi
```

## Video 14: Validar información

```bash
vim 8_readValidate.sh
```

```bash
#!/bin/bash
option=0
backupName=""
clave=""

echo "programa utilidades postgres"
read -n1 -p "ingresar una opcion:" option # acepta el ingreso de un solo caracter
echo -e "\n"
read -n10 -p "ingresar el nombre del archivo backup:" backupName
echo -e "\n"
read -s -p "Clave:" clave # no se muestra los caracteres
echo "Opción: $option , backupname: $backupName , Clave: \$clave"
```

## Video 15: Pasos de parametros y opciones

```bash
vim 9_options.sh
```

```bash
#!/bin/bash
echo "Programa opciones"
echo "Opcion 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opciones enviadas: $*"
echo -e "\n"

echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
  -a) echo "-a option utilizada";;
  -b) echo "-b option utilizada";;
  -c) echo "-c option utilizada";;
   *) echo "$! no es una opción";;
esac
shift
done
```

> Nota: Si el argumento, coincide con el valor en paréntesis se ejecutará esa línea.

## Video 16: Descarga información de internet

```bash
vim 10_download.sh
```

utilizamos el comando `wget` para descargar ficheros de internet.

```bash
#!/bin/bash
echo "descargar información de internet"
wget hhtps://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.35/bin/apache-tomcat-8.5.35.zip
```

## Video 17: RETO 2

> Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información.

## Video 18, 19 i 20: If/Else y Expresiones Condicionales

Para la sentencia de IF/ELSE se puede utilizar la notación de expresiones regulares que van dentro de parentesis:

Ejemplo: (( $variable >= 18 ))

```bash
notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"
read -n1 -p "indique cual es su nota (1-9): " notaClase
echo -e "\n"
if (( \$notaClase >= 7 )); then
  echo "El alumno aprueba la materia"
else
  echo "El alumno reprueba la materia"
fi
```

O la notación con greather than, etc que va dentro de claudators:

Ejemplo: [ $variable -le 18 ]

```bash
notaClase=0
edad=0

read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
  echo "La persona no puede sufragar"
else
  echo "La persona puede sufragar"
fi
```

Una vez así se pueden anidar tantos IF/ELSE como queramos aunque es una mala práctica si son muy extensos.

```bash
edad=0
echo "Ejemplo Sentencia If -else"

read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
  echo "La persona no puede sufragar"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
  echo "La persona es adulta"
else
  echo "La persona es adulto mayor"
fi
```

## Video 21: Sentencias Case

```bash
vim 14_case.sh
```

```bash
#!/bin/bash
opcion=""

echo "Ejemplo Sentencia Case"
read -p "ingrese una opción de la A - Z: " opcion
echo -e "\n"

case $opcion in
"A") echo -e "\nOperación Guardar Archivo";;
"B") echo "Operación Eliminar Archivo";;
[C-E]) echo "No esta implementada la operación";;
"*") "Opción Incorrecta"
esac
```

## Video 22: RETO 3

> Solicitar que se ingrese un valor del 1 al 5. Según el valor ingresado valor a validarlo utilizando las condicionales e imprimir según el valor ingresado. Construir expresiones de validaciòn númericas, cadenas y archivos según la opción ingresada.

## Video 23: Arreglos

Los arreglos son conjuntos de valores dentro de una variable.

```bash
vim 15_arreglos.sh
```

```bash
#!/bin/bash
arregloNumeros=(1 2 3 4 5 6) # numéricos
arregloCadenas=(Marco, Antonio, Pedro, Susana) # alfanuméricos
arregloRangos=({A..Z} {10..20}) # rangos

echo ${arregloNumeros[*]} # Imprime todos los valores del arreglo.
echo ${#arregloNumeros[*]} # imprime el tamaño del arreglo.
echo ${arregloNumeros[3]} # Imprime la posición 3 del arreglo.

arregloNumeros[7]=20 # Añadir valor en el arreglo.
unset arregloNumeros[0] # Eliminar valor en el arreglo.
```

## Video 24: Sentencia for loop

```bash
vim 16_forLoop.sh
```

```bash
#!/bin/bash
arregloNumeros=(1 2 3 4 5 6)

# Iterar en la lista de Números
for num in ${arregloNumeros[*]}
do
  echo "Número: $num"
done

# Iterar en la lista de Cadenas
for nom in "marco" "Pedro" "Luis" "Daniela"
do
echo "Número: $nom"
done

# Iterar en Archivos
for fil in *
do
echo "Nombre archivo: $fil"
done

# Iterar utilizando un comando
for fil in $(ls)
do
  echo "Nombre archivo: $fil"
done

# Iterar utilizando el formato tradicional
for ((i=1; i<10; i++))
do
echo "Número: $i"
done
```

## Video 25: Sentencia while loop

```bash
vim 17_whileLoop.sh
```

```bash
#!/bin/bash
numero=1

while [ $numero -ne 10 ]
do
echo "Imprimiendo $numero veces"
  numero=$((numero + 1))
done
```

## Video 26: loop Anidados

```bash
vim 18_loopsAnidados.sh
```

```bash
#!/bin/bash
for fil in $(ls)
do
  for nombre in {1..4}
  do
    echo "Nombre archivo: $fil _ $nombre"
  done
done
```

## Video 27: Break y continue

- `Break` Rompe el Loop.
- `Continue` Salta a la siguiente iteración.

```bash
vim 19_breakContinue.sh
```

```bash
#!/bin/bash
for fil in $(ls)
do
  for nombre in {1..4}
  do
    if [ $fil = "10*download.sh" ]; then
      break; # si se valida, rompe la ejecucón.
    elif [[ $fil == 4* ]]; then
      continue; # si se valida, salta a la otra sentencia.
    else
      echo "Nombre archivo: $fil _ $nombre"
    fi
  done
done
```

## Video 28: Menu de Opciones

```bash
vim 10_menuOpciones.sh
```

```bash
#!/bin/bash
opcion=0

while :
do
  clear # Limpiar la pantalla
  echo "-----------------------------------------"
  echo " MENU PRINCIPAL "
  echo "-----------------------------------------"
  echo "1. Instalar Postgres"
  echo "2. Desinstalar Postgres"

  read -n1 -p "Ingrese una opción [1-5]:" opcion

  case $opcion in
  1) echo -e "\nInstalar postgres..."
  2) echo -e "\nDesinstalar postgres..."
  esac
done
```

## Video 29: RETO 4

> Lanzar un menú con las opciones: Procesos Actuales, Memoria Disponible, Espacio en Disco, Información de Red, Variables de Entorno Configuradas, Información Programa, Backup información, Ingrese una opción. Posterior a esto vamos a recuperar la opción ingresada, validarla e imprimir la opción y el título de acuerdo a lo ingresado

## Video 30: Archivos y Directorios

## Video 31: Escribir dentro de archivos

## Video 32: Leer Archivos

## Video 33: Operaciones Archivos

## Video 34: RETO 5

## Video 35: Empaquetamiento

(TAR, GZIP, PBZIP 2)

## Video 36: Respaldo Empaquetado con clave

## Vidoe 37: transferir información red

## Video 38: RETO 6

## Video 39: Crear funciones y paso de argumentos

## Video 40: Funciones de instalar y desinstalar postgres

## Video 41: Funciones sacar y restaurar respaldos en postgres

## Video 42: RETO 7

## Video 43: Cierre
