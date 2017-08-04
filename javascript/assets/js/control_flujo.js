//Print even numbers
console.log('Numbers');

for (var i = 0; i <= 20; i += 2) {
    console.log(i);
}

var name = prompt('¿Como te llamas?');

//Print letter by letter
console.log('1 by 1');
var cont = 0;
do {
    console.log(name.charAt(cont));
    cont++;
} while (cont < name.length);


//Print letter by letter inverse
console.log('1 by 1 inv');

var cont2 = name.length - 1;
while (cont2 >= 0) {
    console.log(name.charAt(cont2));
    cont2--;
}

//Print letter by letter inverse in prime index
console.log('1 by 1 inv prime');

var prime = true;
for (var i = name.length - 1; i >= 0; i--) {

    for (var j = i - 1; j > 1; j--) {
        if (i % j === 0) {
            prime = false;
        }
    }
    if (i < 2) {
        console.log(name.charAt(i), i);
    } else if (prime === true) {
        console.log(name.charAt(i), i);
    }
    prime = true;
}