Test Code
---------

<pre class="file" data-filename="tests.py" data-target="replace">

class TestRunNumbers(unittest.TestCase):
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

    def test_can_handle_strings_as_inputs(self):
        self._verify_cases([
            [13, ['13']],
            [23, [23]],
            [10, [1, '2', 3, 4]],
            [-2, [3, -5]],
            [5, ['2', '3']],
        ])

</pre>

Application Code
----------------

<pre class="file" data-filename="calc.py" data-target="replace">
def my_sum(*args):
    if len(args) == 0:
        return 0
    int_args = [int(a) for a in args]
    return sum(int_args)
</pre>