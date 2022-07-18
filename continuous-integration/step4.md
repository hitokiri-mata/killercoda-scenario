Guardaremos los cambios en una nueva rama y crearemos un pull request para integrar los cambios de esta rama en la rama principal.

✏ **Nota**: **Pull Request** es una petición para que alguien revise, apruebe e integre cambios de una rama hacia otra.

## Guardar Cambios en una Nueva Rama

* En GitHub, en la página donde te quedaste en el paso anterior, baja hasta la sección "**Commit changes**", ingresa una descripción corta del cambio. Una buena práctica es colocar el ID de la historia en esta descripción, por ejemplo `US #1: add horse names in database`{{copy}}, para la historia #1.

* Elige la opción "**Create a new branch for this commit [...]**" e ingresa un nombre corto para la rama como por ejemplo `us-1-horse-db`{{copy}}. Nota que el ID de la historia es usado nuevamente en la rama, esto para fomentar la trazabilidad y un mejor historial de cambios en el repositorio.

* Click en el botón "**Propose Changes**" para iniciar la creación del Pull Request

## Crear un Pull Request

* Cargará la pantalla **Open a pull request**.

* Revisa que la petición es integrar **'master' <- 'us-1-horse-db'** (integrar los cambios de la rama 'rama us-1-horse-db' en la rama 'master')

* Desplázate hasta abajo de la página y revisa los cambios, verás una comparación de antes y después.

* Si estás conforme con los cambios haz click en "**Create pull request**".

