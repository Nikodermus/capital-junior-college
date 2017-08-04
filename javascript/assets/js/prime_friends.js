//Get two numbers (Check if they're numbers)
var num1 = Number(prompt('Ingrese numero 1'));
while (isNaN(num1)) {
    num1 = Number(prompt('Ingrese numero 1'));
}
var num2 = Number(prompt('Ingrese numero 2'));
while (isNaN(num2)) {
    num2 = Number(prompt('Ingrese numero 2'));
}

//Create arrays for each number divisors
var div1 = [];
var div2 = [];

//Fill the arrays with the divisors
for (var i = 2; i < num1; i++) {
    if (num1 % i === 0 && i != 0) {
        div1[div1.length + 1] = i;
    }
}
for (var i = 2; i < num2; i++ && i != 0) {
    if (num2 % i === 0) {
        div2[div2.length + 1] = i;
    }
}


//All numbers are friends until found a shared divisor
var friends = true;

//Check if any divisor exist in the other
for (i in div1) {
    if (div2.indexOf(div1[i]) > -1) {
        friends = false;
    }
}

friends ? alert('Son amigos!') : alert('No lo son :(');