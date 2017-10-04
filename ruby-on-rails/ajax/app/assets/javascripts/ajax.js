document.addEventListener('DOMCOntentLoaded', function () {
    var $btn = $('#run');
    console.log($btn);
    $btn.on('click', function () {
        $.ajax({
            type: 'GET',
            dataType: 'json',
            url: $btn.data('users')
        }).done(function (response) {
            console.log(response, btn.data('users'));
        });
    });
});