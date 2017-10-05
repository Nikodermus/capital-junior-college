document.addEventListener('DOMContentLoaded', function (e) {
    console.log('Yay');

    var xhr = new XMLHttpRequest();
    var last_user_btn = document.querySelector('#last_usr_btn');
    var new_rand_user_btn = document.querySelector('#new_rand_usr_btn');

    last_user_btn.addEventListener('click', function (event) {
        xhr.open('GET', last_user_btn.getAttribute('data-last-user'));
        xhr.send();

        xhr.addEventListener('load', function (event) {
            console.log(xhr.response);
        });
        xhr.addEventListener('error', function (event) {
            console.log(xhr.response);
        });
    });

    var xhr_2 = new XMLHttpRequest();
    new_rand_user_btn.addEventListener('click', function (event) {
        xhr_2.open('POST', new_rand_user_btn.getAttribute('data-rand-user'));
        var rails_token =
            document.querySelector('meta[name="csrf-token"]')
                .getAttribute('content');
        var data = new FormData();
        data.append('authenticity_token', rails_token);
        xhr_2.send(data);
    });


});