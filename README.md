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

dos tipos de variables

VARIABLE DE ENTORNO S.O
/etc/profile

```bash
# VARIABLE DE ENTORNO S.O
COURSE_NAME=ProgramaciónBash
export COURSE_NAME
```

VARIABLES DE USUARIO.

Creamos el segundo fichero de prácticas.

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

## Video 7: tipos de operadores

```bash
vim 3_tipoOperadores.sh
```

```bash
# !/bin/bash
numA=10
numB=4
echo "Números: A= $numA y B= $numB"

echo "Operadores Aritméticos"
echo "A + B =" $((numA + numB))
echo "A - B =" $((numA - numB))
echo "A _ B =" $((numA _ numB))
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
echo "A _= B =" $((numA _= numB))
echo "A /= B =" $((numA /= numB))
echo "A %= B =" $((numA %= numB))
```

## Video 8: Argumentos de scripts

vim 4_argumentos.sh

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

5_substitucionComand

```bash
ubicacionActual=`pwd`
infoKernel=$(uname -a)
echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "La información del Kernel es: $infoKernel"
```

## Video 10: Debug en script

bash -v archivo.sh ver el resulado linea por linea

bash -x archivo.sh ver cuando es salida y entrada

## Video 11: RETO 1

>Desarrollar un programa llamado utilityHost.sh, dentro de él vamos a declarar dos variables una llamada option, otra llamada result, vamos a inicializarles e imprimir sus valores.

## Video 12: Capturar informacion usuario

6_readEcho.sh

```bash
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

7_read.sh

```bash
# !/bin/bash

option=0
backupName = ""

echo "programa Utilidades Postgres"
read -p "ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opción:$option , backupName:$backupName"
```

## Video 13: Expresiones Regulares
