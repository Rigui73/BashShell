# Programación en Bash Shell

## Vídeo 2: Componentes Linux

### Partes principales de Linux

+ Kernel: SO que gestiona el Hardware.
+ Shell: Es un interprete de lenguaje para manipular y controlar aplicaciones.
+ Aplicaciones: Son las aplicaciones con las que interactuamos día a día.

### Tipos de Shells

+ SH
+ SH
+ CSH
+ BASH

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
set showmode #
set autoindent #auto indenta el fichero
set tabstop = 4 # medida de los [tab]
set expandtab #
syntax on #
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
# !/bin/bash
# Programa para realizar algunas operaciones utilitarios de Postgres

echo "Hola Mundo"
```

Para los permisos de ejecucción en Linux:

>drwxrwxrwx archivo.sh (421 sumar estos valores segun los permisos)

```bash
chmod 777 archivo.sh
chmod +x archivo.sh
```

Maneras de ejecutar el script

```bash
bash archivo.sh
./archivo.sh
```

## Vídeo 6: Declaración de variables

/etc/profile

USUARIO DE SUPERUSUARIO

```bash
# VARIABLE DE ENTORNO S.O

COURSE_NAME=Programacion Bash
export COURSE_NAME
```

```bash
vim 2_variables.sh
```

```bash
#!/bin/bash
# revisar declaracion de variables
opcion = 0
nombre = Marco

echo "Opción $opcion y nombre: $nombre"
```

chmod +x 2_variables.sh

```bash
#!/bin/bash
# revisar declaracion de variables
opcion = 0
nombre = Marco

echo "Opción $opcion y nombre: $nombre"

# exportar la variable nombre para que este disponible a los demas procesos
export nombre
# llamar al script
./2variable.sh
```

## Video 7: tipos de operadores

3_tipoOperadores.sh
chmod +x

```bash
# !/bin/bash
# programa para revisar los tipos de operadores
# Autor: Adria Rigall - contacto@adriarigall.com
numA = 10
numB = 4
echo "Números: A= $numA y B= $numB"

echo "Operadores Aritméticos"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A + B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))

echo "Operadores Relacionales"
echo "A < B =" $((numA < numB))
echo "A > B =" $((numA > numB))
echo "A <= B =" $((numA <= numB))
echo "A >= B =" $((numA >= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))

echo "Operadores de Asignación"
echo "Sumar A += B =" $((numA + numB))
echo "Restar A -= B =" $((numA + numB))
echo "Multiplicar A *= B =" $((numA + numB))
echo "Dividir A /= B =" $((numA + numB))
echo "Residuo A %= B =" $((numA + numB))
```

## Video 8: Argumentos de scripts

vim 4_argumentos.sh

```bash
#!/bin/bash
# programa para simplificar el paso de argumentos
#autor: adria rigall - contacto@adriarigall.com

nombreCurso=$1
horariocurso=$2

echo "El nombre del curso es: $nombrecurso dictado en el horario de $horariocurso"
```

```bash
./4_argumentos.sh "argumento1" "argumento2"
```

## Video 9: Comandos en variables

5_substitucionComand
ubicacionActual=pwd
infoKernel = \$(uname -a)

echo "la ubicacion actual es la siguiente: $ubicacionactual"
echo "informacion del kernel es: $infoKernel"

## Video 10: Debug en script

bash -v archivo.sh ver el resulado linea por linea

bash -x archivo.sh ver cuando es salida y entrada

## Video 11: RETO 1

Desarrollar un programa llamado utilityHost.sh, dentro de él vamos a declarar dos variables una llamada option, otra llamada result, vamos a inicializarles e imprimir sus valores.

## Video 12: Capturar informacion usuario

6_readEcho.sh

```bash
# !/bin/bash

option=0
backupName = ""

echo "programa Utilidades Postgres"
echo -n "ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opción:$opcion , backupName:$backupName"
```

7_read.sh

```bash
# !/bin/bash

option=0
backupName = ""

echo "programa Utilidades Postgres"
read -p "ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opción:$opcion , backupName:$backupName"
```

## Video 13: Expresiones Regulares
