var button;
document.addEventListener('DOMContentLoaded', function (e) {
    button = document.getElementById('LoadAjax');
    var xhttp_request;
    if (window.XMLHttpRequest) {
        xhttp_request = new XMLHttpRequest();
    } else {
        xhttp_request = new ActiveXObject('Microsoft.XMLHTTP');
    }
    console.log(xhttp_request);

    xhttp_request.addEventListener('progress', function (e) {
        console.log('In progress', e, JSON.parse(xhttp_request.response).length);
    });

    xhttp_request.addEventListener('load', function (e) {
        var users = JSON.parse(xhttp_request.response);

        for (var i = 0; i < users.length; i++) {
            var p = document.createElement('p');
            p.innerText = users[i].email;
            document.body.appendChild(p);
            console.log(p);
        }
    });

    xhttp_request.addEventListener('error', function (e) {
        console.log('Error!', e, JSON.parse(xhttp_request.response).length);
    });

    xhttp_request.addEventListener('abort', function (e) {
        console.log('Aborted', e, JSON.parse(xhttp_request.response).length);
    });

    xhttp_request.open('GET', 'http://192.168.1.136:3000/users', true);

    button.addEventListener('click', function () {
        xhttp_request.send();
    });
});
