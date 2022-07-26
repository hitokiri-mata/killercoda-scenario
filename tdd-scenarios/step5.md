Extend the tests
================

Es hora de ampliar las pruebas para hacer frente a un número variable de
argumentos, por lo cual es necesario que se amplíe el código de prueba a algo parecido :

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

if __name__ == '__main__':
    unittest.main()
</pre>

Al momento de ejecurar la prueba esta debe fallar.

`python3 ./tests.py`{{execute}}

Asi que antes de continuar debemos, actualizar `my_sum()` para poder solucionar el hecho que la ejecución de los test hayan fallado.
