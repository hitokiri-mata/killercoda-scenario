Primero crea una prueba que falle
===========================

Aunque **TDD** se centra en escribir las pruebas antes que el código fuente, es importante considerar que la idea tras esto no es la de escribir un gran conjunto 
de pruebas por adelantado, sino más bien escribir el mínimo de casos de prueba que garanticen la correcta ejecución de la funcionalidad a ser construida, ya que 
a medida que se agreguen nuevas funcionalidades, iremos agregando mas pruebas a las existentes, con lo cual se ira completando de manera iterativa e incremental,
la batería de pruebas correspondiente a código creado por el desarrollador. 

Con este concepto en mente, una buena primera prueba sería validar la suma de dos números y dejar de lado el requisito de número variable de argumentos por ahora.

Update `tests.py` with the following test case:

Primer paso  - Escribe un caso de prueba que valide corractamente la suma de dos numeros.
----------------------------------------------------

<pre class="file" data-filename="tests.py" data-target="replace">
import unittest

import calc

class TestRunFunction(unittest.TestCase):
    def test_can_sum_two_numbers(self):
        result = calc.my_sum(2, 3)
        self.assertEqual(result, 5)

if __name__ == '__main__':
    unittest.main()
</pre>

**Verifique que las pruebas fallen.** Este paso es importante ya que queremos hacer es
asegurarnos que las pruebas funcionan una vez que nuestro código esta correctamente implementado.

`python3 ./tests.py`{{execute}}
