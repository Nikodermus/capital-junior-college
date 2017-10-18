document.addEventListener('DOMContentLoaded', function () {
    jQuery.ajax({
        type: 'GET',
        url: 'http://localhost:3000/students'
    }).done(function (data) {
        console.log(data);
        data.forEach(function (student) {
            var new_student = document.createElement('div');

            var student_content = `
                <div class="card">
                    <div class="card-block">`;

            if (student.img) {
                student_content += `
                    <img src="${student.img}" class="img-thumbnail">`;
            } else {
                student_content += `
                    <img src="./assets/img/test.jpg" class="img-thumbnail">`;
            }

            student_content += `
                <div class="caption">
                <h3>${student.name + ' ' + student.last_name}</h3>`;

            if (student.grades) {
                var sum = student.grades.reduce(function (previous, current) {
                    return current += previous;
                });

                var avg = sum / student.grades.length;
                student_content += `
                    <p>Average: ${avg}</p>`;
            }
            if (student.email) {
                student_content += `<p>${student.email}</p>`;
            }

            student_content += `
                            <p>
                            <a href="#" class="btn btn-primary" role="button">Button</a>
                            <a href="#" class="btn btn-secondary" role="button">Button</a>
                            </p>
                        </div>
                    </div>
                </div>`;

            new_student.innerHTML = student_content;
            new_student.classList = "col-xs-6 col-sm-6 col-md-6 col-lg-6";
            $('#students').append(new_student);
        }, this);
    });

});