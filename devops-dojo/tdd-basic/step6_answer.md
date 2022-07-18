<pre class="file" data-filename="calc.py" data-target="replace">
def my_sum(*args):
    if len(args) == 0:
        return -3
    return sum(args)
</pre>

Verifique que las pruebas se ejecuten correctamente.

`python3 ./tests.py`{{execute}}
