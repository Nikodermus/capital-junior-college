//Define test arrays
var array = ['val1', '2', 2, 3, 4, false];
var car_brands = [
    'Hyundai', 'Bugatti', 'Renault',
    'Rolls Royce', 'Tesla', 'Mercedez',
    'Ford'
];

//ForEach Example (Iterate over each element in an array)
car_brands.forEach(function (brand, i, fullarray) {
    var removed = fullarray.pop();
    console.log(removed);
});

//Push Example (Add one more element to the array)
car_brands.push('Chevrolet');
console.log(car_brands);


//Filter Example (Return an array when true)
car_brands = car_brands.filter(function (elem) {
    if (elem === 'Tesla') {
        return false;
    } else {
        return true;
    }
});
console.log(car_brands);

//Filter example, return numbers only
array = array.filter(function (elem) {
    return (typeof (elem) == 'number') ?
        true : false;
});
console.log(array);

//Use of addition in a prototype, create an method for strings that reverses each character and can be used anywhere
String.prototype.backwards = function () {
    var reverse = this.split('').reverse().join('');
    return reverse;
};

//Implementation of the created method for the String object
var agua = "aguacate";
console.log(agua.backwards());

//Second own method in a prototype, for Array this time
Array.prototype.remove = function (i) {
    var myself = this;
    myself = myself.filter(function (elem, ind) {
        return ind === i ? false : true
    })
    return myself;
}

//Implementation of the created method for the String object
console.log(car_brands);
console.log(car_brands.remove(2));


//Creation of a prototype
function Persona(col, age, height) {
    this.prototype = {
        "skin": "",
        "old": "",
        "tall": "",
    };
    return Object.assign({}, this);
}
mipersonita = new Persona();
console.log(mipersonita);
console.log(mipersonita.prototype);