¿Qué pasa en el caso que tengamos una lista vacía?
========================

Como podemos observar en el proceso de creación de los argumentos de entrada, utilizados como ejemplo en la construcción de este caso de prueba, podemos observar, que el escenario en el cual no se ingresan argumentos de entrada a la función, no fue considerado, de momento no esta estipulado cual es el comportamiento que la función debería tener para dicho escenario, por lo cual es necesario consultarle a nuestro product owner, acerca del comportamiento esperado para el sistema en dicho escenario, por ahora entre tenemos esta conversación, consideraremos el hecho que la función simplemente retorne el código
de error -3.    

Genial -  entonces tratemos de incorporar este comportamiento dentro de nuestra prueba unitaria. 

<pre class="file" data-filename="tests.py" data-target="replace">
import unittest

import calc

class TestRunFunction(unittest.TestCase):
    def test_can_sum_two_numbers(self):
        result = calc.my_sum(2, 3)
        self.assertEqual(result, 5)

    def test_can_take_variable_number_of_arguments(self):
        cases = [
            [13, [13]],
            [10, [1, 2, 3, 4]],
            [-2, [3, -5]],
        ]
        for expected_sum, inputs in cases:
            result = calc.my_sum(*inputs)
            self.assertEqual(expected_sum, result)

    def test_that_no_arguments_return_zero(self):
        result = calc.my_sum()
        self.assertEqual(-3, result)

if __name__ == '__main__':
    unittest.main()
</pre>

Verifiquemos si las pruebas fallan:

`python3 ./tests.py`{{execute}}

y actualiza `my_sum()` para que la ejecución de la prueba, sea satisfactoria.
