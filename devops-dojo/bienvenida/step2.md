
## Repositorio de Código Fuente

Para avanzar en los laboratorios, usarás una copia propia del repositorio de código de **Pet Clinic**. Tu repositorio de código se encontrará en **[GitHub](https://github.com/).**

Si bien los ambientes son efímeros, todo tu progreso se irá grabando en tu repositorio de código. 

## Asegúrate de tener una cuenta en Github

* Si no tienes una cuenta en Github, créate una cuenta personal en [github.com](https://github.com) (te pedirá confirmar el correo para que la cuenta esté usable).

## Genera un 'Personal Access Token'

Generarás un token de acceso que se utilizará para conectar los ambientes de trabajo a tu copia de GitHub.

* Ingresa a [github.com](https://github.com)
* Click en el **ícono de tu perfil** en la parte superior derecha de la página, luego click en **Settings.**
* En el menú de la izquierda, click en **Developer settings** y luego click en **Personal access tokens.**
* Click en **Generate new token.**
* Ingresa una descripción del token, por ejemplo `DevOps Labs token`{{copy}}
* En **Select Scopes** selecciona:
    * `repo` para que el token pueda leer y escribir en tu repositorio.
    * `write:packages` para poder publicar paquetes de despliegue.
    * `read:packages` para poder descargar paquetes de despliegue.
    * `admin:repo_hook` para que se pueda crear Web Hooks.
* Click en **Generate token.**
* **Copia el token y guárdalo en tus notas, se necesitará a lo largo de este y de los siguientes laboratorios.** Si pierdes el token, tendrás que generar uno nuevo.

## Realiza una Copia del Repositorio

Realizarás una copia del repositorio de código a tu propia cuenta de GitHub.

* Ingresa al repositorio donde se encuentra el código base [https://github.com/hitokiri-mata/pet-clinic](https://github.com/hitokiri-mata/pet-clinic).

* Para copiar este repositorio a tu cuenta, en la parte superior derecha de la pantalla haz clic en **Fork**.

* Si tu cuenta pertenece a varias organizaciones, te aparecerá la página **Where should we fork pet-clinic**, selecciona tu perfil.

* Espera a que termine el proceso, demorará unos segundos.

* Cuando termine el proceso de copia, aparecerá el repositorio asociado a tu cuenta y verás la estructura de archivos del mismo.

## Habilita el seguimiento de tareas en GitHub (GitHub Issues)

Utilizaremos GitHub Issues para registrar y gestionar historias de usuario a implementar.

* En tu repositorio de Github, ingresa al **tab 'Settings'.**

* En el menu de la derecha, asegúrate de estar en **Options**.

* Desplázate hacia abajo en la página hasta la **sección 'Features'**.

* Habilita la feature **Issues**.

## Genera Datos de Historias de Usuario

Ejecuta el siguiente script para generar algunas historias de usuario que se implementarán posteriormente. Estas historias se generarán como **GitHub Issues**.

  `./setup-pet-clinic.sh`{{execute}}

Este script te pedirá **ingresar tu Personal Access Token**.

💡 **TIP**: 🦊 ¿Usas Firefox? es probable que el token no se copie con <kbd>CTRL</kbd>+<kbd>V</kbd>.
Usa <kbd>CTRL</kbd>+<kbd>INS</kbd> para copiar el token y <kbd>SHIFT</kbd>+<kbd>INS</kbd> para pegarlo en la ventana del terminal.
