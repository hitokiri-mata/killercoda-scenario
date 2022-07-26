Refactoriza
===========

Si bien nuestro primer caso de prueba satisfactorio, este todavía no cumple con el criterios de recibir un número variable de argumentos, esta funcionalidad 
se puede agregar en Python adicionando la sentencia `*args` este proceso de optimizar el desempeño de una función sin modificar su comportamiento, es lo que 
en ingeniería de software se conoce como refactorizacion, ahora prueba agregar esta refactorizacoion en la función `my_sum()`. 

<pre class="file" data-filename="calc.py" data-target="replace">
def my_sum(*args):
    return args[0] + args[1]
</pre>

No olvides adicionar el código de verificación en el código de la prueba, para verificar que esta sea satisfactoria. 

`python3 ./tests.py`{{execute}}

**Nota** ten en cuenta que el código de la función no se ha implementado completamente, ya que todavía solo puede aceptar dos argumentos solamente.
