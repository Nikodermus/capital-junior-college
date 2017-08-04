var string_reverse_prim = function (name) {
    console.log('1 by 1 inv prime')
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
};
var string_reverse = function (name) {
    console.log('1 by 1 inv');
    var cont2 = name.length - 1;
    while (cont2 >= 0) {
        console.log(name.charAt(cont2));
        cont2--;
    }
};