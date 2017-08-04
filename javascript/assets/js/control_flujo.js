/*for (var i = 0; i <= 20; i += 2) {
    console.log(i);
}

Print letter by letter
var cont = 0;
do {
    console.log(name.charAt(cont));
    cont++;
} while (cont < name.length);

//Print letter by letter inverse

var cont2 = name.length - 1;
while (cont2 >= 0) {
    console.log(name.charAt(cont2));
    cont2--;
}*/
var name = prompt('¿Como te llamas?');

var prime = true;
for (var i = name.length - 1; i >= 0; i--) {

    for (var j = i - 1; j > 2; j--) {
        if (i % j === 0) {
            prime = false;
        }
    }
    if (i < 3) {
        console.log(name.charAt(i));
    } else if (prime === true) {
        console.log(name.charAt(i));
    }
    prime = true;
}