
## La Nueva Historia de Usuario

Tu eres Dan, el desarrollador.

![](./assets/dario.png)

Trabajarás en una historia que ha sido priorizada por Paulo, el Product Owner.

![](./assets/paulo.png)

![](./assets/user-story.png)

Lee la historia que se encuentra registrada en GitHub:
[https://github.com/[your_username]/pet-clinic/issues](https://[[HOST_SUBDOMAIN]]-9876-[[KATACODA_HOST]].environments.katacoda.com/#user-story)

## Agrega nuevas mascotas en la BD

✏ **Nota**: Para facilitar la parte práctica, modificarás el código fuente directamente desde navegador, a través de la interfaz gráfica de Github.

* Abre Github y navega hasta el archivo [`src/main/resources/db/hsqldb/data.sql`](https://[[HOST_SUBDOMAIN]]-9876-[[KATACODA_HOST]].environments.katacoda.com/#datasql). Este archivo es utilizado para poblar la data cuando levanta la aplicación.

* Para editar el archivo, click en el **ícono de lapiz** en la parte superior derecha del archivo.

* En la línea 24, debajo de la sentencia `INSERT INTO types VALUES (6, 'hamster');`, agrega la siguiente línea para agregar un nuevo tipo de mascota:

  <pre class="file" data-target="clipboard">
  INSERT INTO types VALUES (7, 'horse');
  </pre> 

* En la línea 50, debajo de la sentencia `INSERT INTO pets VALUES (13, 'Sly', '2012-06-08', 1, 10);`, agrega las siguientes líneas para agregar dos nuevos caballos:

  <pre class="file" data-target="clipboard">
  INSERT INTO pets VALUES (14, 'Jolly Jumper', '2012-09-20', 7, 5;
  INSERT INTO pets VALUES (15, 'Flycka', '2012-07-14', 7, 9);
  </pre>

* No realices commit de los cambios aún.

✏ **Nota**: Hay un error intencional en la línea de "Jolly Jumper", para que puedas ver como las verificaciones automaticas, que se ejecutarán como parte de la integración continua por Jenkins, detectan el error.