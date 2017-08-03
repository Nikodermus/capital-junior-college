var x = Number(prompt('ingresa el primer nunero'));
var y = Number(prompt('ingresa el segundo número'));
var z = 0;


if (isNaN(x) || isNaN(y)) {
    alert('oops no es un número');
} else if (x <= 0 || y <= 0) {
    alert('solo numero positivos')
} else if (!(x % 1 == 0) || !(x % 1 == 0)) {
    alert('solo numeros enteros');
} else {
    for (var i = 0; i < y; i++) {
        z += x;
    }
    alert(x + ' * ' + y + ' = ' + z);
}