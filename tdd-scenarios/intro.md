Test Driven Development
=======================

Que es TDD
-----------

El desarrollo guiado por pruebas (TDD) por sus siglas en ingles, se refiere al acto de escribir las pruebas primero
y solo escribir el código fuente de la aplicación cuando hay una prueba fallida escrita previamente, dicha practica
es conocida como el ciclo de rojo, verde y refactorizacion.

* Paso 1 Rojo, Crea una prueba unitaria la cual estará fallida, debido a que no existe un código fuente que valida rojo crea una prueba fallida, 
* es importante recordar que se debe mantener la prueba lo más pequeña y simple posible. 
* Paso 2 Verde escribe solamente el código fuente suficiente para que la prueba se ejecute satisfactoriamente.
* Paso 3 Refactorizar el código fuente, para que sea mas eficiente su funcionamiento, sin cambiar la funcionalidad (mantener las pruebas en verde).
* Repetir, Repetir, Repetir....

Porque deberiamos utilizar TDD ? Why would you want to do TDD
----------------------------

* Una mayor cobertura en tu código, esto significa que todas las líneas de códigos escritas por los desarrolladores tienen una  pruebas ya escritas que garantiza su * funcionamiento.
* Esta técnica es ideal para resaltar problemas de diseño o requisitos poco claros al principio del proceso de desarrollo.
