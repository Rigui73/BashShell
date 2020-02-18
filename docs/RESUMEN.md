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
#!/bin/bash/
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
option=0
backupName=""
clave=""

echo "programa utilidades postgres"
#acepta el ingreso de un solo caracter
read -n1 -p "ingresar una opcion:" option
echo -e "\n"
read -n10 -p "ingresar el nombre del archivo backup:" backupName
echo -e "\n"
read -s -p "Clave:" clave
echo "Opción: $option , backupname: $backupName , Clave: \$clave"
```

## Video 15: Pasos de parametros y opciones

envio de opciones vs parametros
envio independiente
envio complementario
leer los valores

## video 16: descarga informacion de internet

```bash
echo "descargar informacion de internet"
wget hhtps://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.35/bin/apache-tomcat-8.5.35.zip
```

## Video 17: RETO 2

> Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información.

## Video 18 i 19: If/Else

Se utiliza (( $variable >= 18 ))
Se utiliza [ $variable -le 18 ]

## Video 20: Expresiones Condicionales

archivo.

## video 21: Sentencias Case

archivo.

## Video 22: RETO 3

> Solicitar que se ingrese un valor del 1 al 5. Según el valor ingresado valor a validarlo utilizando las condicionales e imprimir según el valor ingresado. Construir expresiones de validaciòn númericas, cadenas y archivos según la opción ingresada.

## Video 23: no se