Refactoricemos
========

Como podemos notar el código de prueba parece un poco repetitivo, así que refactoricemos un poco  el código duplicado, de la prueba. 
No te vuelvas demasiado loco, no queremos crear nada demasiado complicado. Un buen código siempre es simple.

* `test_can_sum_two_numbers()` se puede incorporar en `test_can_take_variable_number_of_arguments()`
* `test_that_no_arguments_return_zero()` debe mantenerse en una **assertion** separada, pero podemos
   refactorizar nuestro código de prueba de modo que podamos evitar la duplicidad.

<pre class="file" data-filename="tests.py" data-target="replace">
import unittest

import calc

class TestRunFunction(unittest.TestCase):
    def _verify_cases(self, cases):
        for expected_sum, inputs in cases:
            result = my_sum(*inputs)
            self.assertEqual(expected_sum, result)

    def test_can_take_variable_number_of_arguments(self):
        self._verify_cases([
            [13, [13]],
            [10, [1, 2, 3, 4]],
            [-2, [3, -5]],
            [5, [2, 3]],
        ])

    def test_that_no_arguments_return_zero(self):
        self._verify_cases([
            [0, []],
        ])

if __name__ == '__main__':
    unittest.main()
</pre>

Verifique que las pruebas aún pasen.

`python3 ./tests.py`{{execute}}
