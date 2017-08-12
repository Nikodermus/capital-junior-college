//Store the HTML representation as a JS Object
var html_obj = document;

//Store in the window attribute a function that will be called once all the elements are ready
window.onload = function () {

    //Store the h1 element with a CSS Selector
    var h1_elem = document.querySelector('body>h1:first-child');

    //Store the h1 element with its ID
    var h1Main = document.getElementById('mainTitle');

    //Redefine the color attribute within the style arribute of the html element
    h1_elem.style.color = "#F00";
    h1Main.style.color = "#0F0";

    //Fill the element with plain text
    h1_elem.innerText = 'Hello by JS DOM Manipulation!';

    //Fill the elememtn with HTML markup
    h1_elem.innerHTML = '<em>Hello by JS DOM Manipulation!<em>';

    //Store all the h1 elements in a html collection
    var h1s_html_collection = document.getElementsByTagName('h1');

    //Run the html collection, and change each one to have a blue background
    for (var i = 0; i < h1s_html_collection.length; i++) {
        h1s_html_collection[i].style.background = 'blue';
    }

    //Store all the h1 elements in a node list (It receives a CSS Selector)
    h1s_node_list = document.querySelectorAll('h1');
    console.log(h1s_node_list);

    //With a node list we do have the forEach method, to run all the elements
    h1s_node_list.forEach(function (element, ind) {
        //Make each element to have red background
        element.style.background = 'red';
    });


    //Create a HTML element and store it, it receives a tag name
    var ul = document.createElement('ul');

    //Create 10 li elements and add each one of the to the ul we created
    for (var i = 0; i < 10; i++) {
        var li = document.createElement('li');
        li.innerText = i;
        ul.appendChild(li);
    }

    //Add the ul element we created (with their li) to the page in the browser
    document.body.appendChild(ul);

    //Store the alphabetical input
    input_text = document.querySelector('input[type="text"]');

    //Store the numerical input
    input_number = document.querySelector('input[type="number"]');

    //For input elements, they need to be filled with the 'val' attribute
    input_text.value = 'Hey!'; //Everything here will be parsed as String
    input_text.innerText = "This won't work :(";

    input_number.value = 13; //Parsed as String
    input_number.valueAsNumber = 13; //Parsed as Number

};