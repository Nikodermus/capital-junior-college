var html_obj = document;

console.log(window.content);

window.onload = function () {
    var h1_elem = document.querySelector('body>h1:first-child');
    var h1Main = document.getElementById('mainTitle');

    h1_elem.style.color = "#F00";
    h1Main.style.color = "#0F0";

    h1_elem.innerText = 'Hello by JS DOM Manipulation!';
    h1_elem.innerHTML = '<em>Hello by JS DOM Manipulation!<em>';

    var h1s_html_collection = document.getElementsByTagName('h1');

    for (var i = 0; i < h1s_html_collection.length; i++) {
        h1s_html_collection[i].style.background = 'blue';
    }

    h1s_node_list = document.querySelectorAll('h1');
    console.log(h1s_node_list);

    h1s_node_list.forEach(function (element, ind) {
        element.style.background = 'red';
    });

    var num_array = [];
    var ul = document.createElement('ul');

    for (var i = 0; i < 10; i++) {
        var li = document.createElement('li');
        li.innerText = i;
        ul.appendChild(li);
    }

    document.body.appendChild(ul);




};