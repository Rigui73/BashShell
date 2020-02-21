# Por qué :heart: contribuir

Si has llegado hasta aquí es porque posiblemente estás pensando en contribuir en este proyecto.

Os damos la bienvenida y os motivamos a contribuir a la mejora de este proyecto. Por supuesto, en ese caso, quedará tu nombre registrado en la lista de contribuciones. :smile: :white_check_mark:

En este proyecto, valoramos qualquier aportación por pequeña que sea. Por eso, no tenemos apartado para las primeras aportaciones.

1. Las pequeñas cosas hacen la gran diferencia. Simplemente elige algo que te interese y comienza a trabajar en ello.

2. En caso de cualquier duda, pregunta. Hay mucho código. ![Discord-chat](https://img.shields.io/discord/680332596693172234?color=blue&logo=discord&logoColor=white)

## Código de conducta

Este proyecto tiene un [Código de Conducta](https://github.com/Rigui73/BashShell/CODE_OF_CONDUCT.md). Esperamos que todos los que participen estén conformes con él. Informa de cualquier comportamiento inaceptable a [contacto@adriarigall.com](mailto:contacto@adriarigall.com).

## Índex del contenido

[Código de Conducta](#code-of-conduct)

[Vulnerabilidades de Seguridad](Security-vulnerability-reports)

[Cómo Contribuir](#how-can-i-contribute)

- [Reportar Bugs](#reporting-bugs)
- [Issues Templates](#issues)
- [Pull Requests](#pull-requests)
- [Sugerir mejoras](#suggesting-enhancements)

[Guías de Estilo](#styleguides)

- [Mensajes de `git commit`](#git-commit-messages)
- [Documentación](#documentation-styleguide)

[Communidad](#community)

## Vulnerabilidades de seguridad

Si descubre una vulnerabilidad de seguridad, apreciaríamos que no se divulgara públicamente. El apartado [issue](https://www.github.com/Rigui73/BashShellissue) y la [lista de correos](https://www.github.com/Rigui73/BashShell/.mailmap) son completamente públicos. Si necesita llegar a desarrolladores del sistema de forma no pública, informe el problema a [contacto@adriarigall.com](mailto:contacto@adriarigall.com)

## Prepara la zona de trabajo

### Fork y crear una rama

Crea una rama del proyecto utilizando `feature-id` o `hotfix-id`.

- `feature` - Para mejoras y nuevos desarrollos.
- `hotfix` - Para errores y correcciones.
- `id` - Número asignado en GitHub.

Ejemplo:

`sh git checkout -b feature-625`

### Build & Packaging

Las solicitudes de extracción para solucionar problemas de compilación o empaquetado en otros sistemas operativos o administradores de paquetes serán aceptadas con gusto, pero los problemas sin correcciones de código se cerrarán como se indicó anteriormente.

### Implemente su corrección o característica

En este punto, ¡estás listo para hacer tus cambios! Siéntase libre de pedir ayuda; todos son principiantes al principio  :smile_cat:

### Obtén el estilo correcto

Su aportación debe seguir las mismas guias de estilo como el resto del proyecto. Puede verificar y corregir problemas de estilo ejecutando cada linter individualmente. Ejecute `bin / rake -T lint` para ver las linters disponibles.

### Agregar una entrada de registro de cambios

Si su PR incluye cambios observables por el usuario, se le pedirá que agregue un registro en CHANGELOG.md

El formato del registro de cambios es el siguiente:

- Una línea por RP que describe su corrección o mejora.
- Las entradas terminan con un punto, seguido de "[# pr-number] por [@ github-username]".
- Las entradas se agregan en la sección "No publicados" en la parte superior del archivo, debajo de
     la subsección "Corrección de errores" o "Mejoras".

## Issues

- **No abra un problema de GitHub si el error es una vulnerabilidad de seguridad**, y en su lugar para consultar nuestra.

- **Asegúrese de que el error no haya sido reportado** buscando en GitHub en [Problemas](https://github.com/rails/rails/issues).

- Solo realizamos un seguimiento de los errores en los **dos versiones más recientementes publicados** en GitHub. Si está utilizando una versión anterior, póngase en contacto con el rastreador de errores de su distribución.

- Al archivar un problema, especifique la **versión** con la que experimenta el problema. Además, indique qué **distribución** está usando.

- Incluye una explicación sobre cómo reproducir el problema que estás señalando.

 > **Nota:** Si encuentra un problema **Cerrado** que parece ser lo mismo que está experimentando, abra un nuevo problema e incluya un enlace al problema original en el cuerpo del nuevo.

- Si no puede encontrar un problema abierto que aborde el problema, [abra uno nuevo](https://github.com/rails/rails/issues/new). Si es posible, use las plantillas de informe de errores relevantes para crear el problema. Simplemente copie el contenido de la plantilla adecuada en un archivo .rb, realice los cambios necesarios para demostrar el problema y **pegue el contenido en la descripción del problema**

  - [**Active Record** (models, database) issues](https://github.com/rails/rails/blob/master/guides/bug_report_templates/active_record_master.rb)
  - [**Action Pack** (controllers, routing) issues](https://github.com/rails/rails/blob/master/guides/bug_report_templates/action_controller_master.rb)
  - [**Generic template** for other issues](https://github.com/rails/rails/blob/master/guides/bug_report_templates/generic_master.rb)

### Tipos y estados de Issues

| Etiqueta           | Descripción                                                             |
| ------------------ | ----------------------------------------------------------------------- |
| `enhancement`      | Peticiones de mejoras.                                                  |
| `bug`              | Errores confirmados o informes que muy probablemente sean errores.      |
| `question`         | Preguntas más que informes de errores o solicitudes de funciones.       |
| `help-wanted`      | Se agradece la ayuda de la comunidad.                                   |
| `more-information` | Se debe recopilar más información.                                      |
| `duplicate`        | Problemas que son duplicados, es decir, se han informado anteriormente. |
| `invalid`          | Problemas que no són válidos (ej. Errores de usuario).                  |

## Pull Request

Las contribuciones al proyecto son bienvenidas. Consulte nuestra guía de estilo antes de enviar cambios. Si desea ayudar con el proyecto, puede elegir un problema abierto desde el [issue tracker](https://github.com/RetroPie/RetroPie-Setup/wiki/Shell-Style-Guide).

1. Fork y Clone 'master'.
2. Cree una rama 'branch' para contener sus cambios.
3. Hack away.
4. Agregue sus propias pruebas y asegúrese de que todas estén funcionando.
5. Si algunos de sus cambios merecen una mención en la página de inicio, edite el [CHANGELOG.md](https://www.github.com/Rigui73/Riguipedia/CHANGELOG.md).
6. 'Push branch' a tu 'Fork' en GitHub.
7. Envíe un 'pull request' para el proyecto.

_Notas:_
_No cambie la numeración de versión; lo haremos por nuestra cuenta._

### Etiquetas de Pull Request

| Etiqueta  | Descripción |
| ----------- | ----------- |
| `work-in-progress` | Pull requests que todavía se están trabajando, seguirán más cambios. |
| `needs-review` | Pull requests que necesitan revisión de código y aprobación de los encargados. |
| `under-review` | Pull requests están siendo revisadas por el equipo central. |
| `requires-changes` | Pull requests que deben actualizarse en función de los comentarios de revisión y luego revisarse nuevamente. |
| `needs-testing` | Pull requests que requieren pruebas manuales. |

## Enviar sugerencias y mejoras

- **Use un título claro y descriptivo** para el problema para identificar la sugerencia.
- **Proporcione una descripción paso a paso de la mejora sugerida** con tantos detalles como sea posible.
- **Describa el comportamiento actual** y **explique qué comportamiento esperaba ver en su lugar** y por qué.
- **Incluye capturas de pantalla y GIF animados** que te ayudan a demostrar los pasos o señalar la parte de con la que está relacionada la sugerencia. Puede usar [esta herramienta](https://www.cockos.com/licecap/) para grabar GIF en macOS y Windows, y [esta herramienta](https://github.com/colinkeenan/silentcast) o [esta herramienta](https://github.com/GNOME/byzanz) en Linux.

## Styleguides

### Git `Commit` Messages

- Se usa el tiempo presente `Add feature`.
- Se limita a 72 caracteres o menos. Las explicaciones detalladas estan en [CHANGELOG.md](/CHANGELOG.md).
- Cuando se ha cambiado solo documentación, incluye `[doc update]` en el titulo del commit.
- Considera empezar el commit con un emoji:
  - :art: `:art:` al mejorar el formato / estructura del código
  - :racehorse: `:racehorse:` al mejorar el rendimiento
  - :non-potable_water: `:non-potable_water:` al conectar pérdidas de memoria
  - :memo: `:memo:` al escribir documentos
  - :penguin: `:penguin:` al arreglar algo en Linux
  - :apple: `:apple:` al arreglar algo en macOS
  - :checkered_flag: `:checkered_flag:` al arreglar algo en Windows
  - :bug: `:bug:` al corregir un error
  - :fire: `:fire:` al eliminar código o archivos
  - :green_heart: `:green_heart:` al arreglar la compilación de CI
  - :white_check_mark: `:white_check_mark:` al agregar pruebas
  - :lock: `:lock:` cuando se trata de seguridad
  - :arrow_up: `:arrow_up:` al actualizar dependencias
  - :arrow_down: `:arrow_down:` al degradar dependencias
  - :shirt: `:shirt:` al eliminar las advertencias de linter

### Documentación

- Se usa [Markdown](https://daringfireball.net/projects/markdown).

## Comunidad

Para comunicarnos con todos los demás utilizamos la plataforma Discord. :point_right: ![Discord Chat](https://img.shields.io/discord/680332596693172234?color=blue&logo=discord&logoColor=white)

### Últimas palabras

Nos gustaría pedir disculpas por adelantado si no podemos procesar y responder a su problema o PR de inmediato. ¡Tenemos mucho trabajo por hacer, pero lo estamos haciendo lo mejor posible!
